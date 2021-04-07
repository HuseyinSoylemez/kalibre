using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kalibre
{
    public partial class Firma : System.Web.UI.Page
    {
        #region DB oper
        public DataTable sc(string cumle, string ConnStr)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[ConnStr].ConnectionString))
            {
                using (SqlDataAdapter adap = new SqlDataAdapter(cumle, conn))
                {
                    try
                    {
                        conn.Open();
                        adap.Fill(dt);
                    }
                    catch (Exception)
                    {
                    }
                }
            }
            return dt;
        }
        public string scs(string cumle, string ConnStr)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[ConnStr].ConnectionString))
            {
                using (SqlCommand comm = new SqlCommand(cumle, conn))
                {
                    try
                    {
                        conn.Open();
                        return comm.ExecuteScalar().ToString();
                    }
                    catch (Exception)
                    {
                        return "-";
                    }
                }
            }
        }
        public string scn(string cumle, string ConnStr)
        #endregion
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[ConnStr].ConnectionString))
            {
                using (SqlCommand comm = new SqlCommand(cumle, conn))
                {
                    try
                    {

                        conn.Open();
                        return comm.ExecuteNonQuery().ToString();
                    }
                    catch (Exception)
                    {
                        return "-";
                    }
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["PRS_ID"] == null || Session["Yetki"].ToString() != "1")
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    DataTable dt = sc("select * from Genel_Bilgi WHERE G_ID=" + 1, "ConnStr");

                    if (dt.Rows.Count == 1)
                    {
                        txt_ad.Text = dt.Rows[0]["Ad"].ToString();
                        txt_kad.Text = dt.Rows[0]["KAd"].ToString();
                        txt_adres1.Text = dt.Rows[0]["Adres"].ToString();
                        txt_adres2.Text = dt.Rows[0]["Adres2"].ToString();
                        txt_ilce.Text = dt.Rows[0]["Ilce"].ToString();
                        txt_il.Text = dt.Rows[0]["Il"].ToString();
                        txt_tel.Text = dt.Rows[0]["Tel"].ToString();
                        txt_fax.Text = dt.Rows[0]["Fax"].ToString();
                        txt_web.Text = dt.Rows[0]["Web"].ToString();
                        txt_mail.Text = dt.Rows[0]["Mail"].ToString();
                        img_profil.ImageUrl = dt.Rows[0]["logo"].ToString();
                    }
                }
            }
        }

        protected void res_ekle_Click(object sender, EventArgs e)
        {

            if (FlUpload.HasFile)
            {
                try
                {

                    if (FlUpload != null &&
                           (FlUpload.PostedFile.ContentType == "image/gif" ||
                           FlUpload.PostedFile.ContentType == "image/png"))
                    {

                        string[] uzanti = FlUpload.FileName.Split('.');
                        FlUpload.SaveAs(Server.MapPath("img/logo." + uzanti[1]));

                        img_profil.ImageUrl = "img/logo." + uzanti[1];
                        string yol = "img/logo." + uzanti[1];

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "YeniPencere", @"<script language='javascript'>alert('Resim Formatına Dikkat Ediniz.');</script>");
                    }

                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(GetType(), "YeniPencere", @"<script language='javascript'>alert(ex.Message);</script>");
                }

            }


        }

        protected void btn_gnc_Click(object sender, EventArgs e)
        {
            OpentextBoxes(this);
            btn_guncelle.Visible = true;
            btn_ipt.Visible = true;
            FlUpload.Visible = true;
            res_ekle.Visible = true;
            btn_gnc.Visible = false;
        }

        //public void CleartextBoxes(Control parent)
        //{
        //    foreach (Control x in parent.Controls)
        //    {
        //        if ((x.GetType() == typeof(TextBox)))
        //        {
        //            ((TextBox)(x)).Text = "";
        //        }
        //        if (x.HasControls())
        //        {
        //            CleartextBoxes(x);
        //        }
        //    }
        //}

        public void OpentextBoxes(Control parent)
        {
            foreach (Control x in parent.Controls)
            {
                if ((x.GetType() == typeof(TextBox)))
                {
                    ((TextBox)(x)).ReadOnly = false;
                }
                if (x.HasControls())
                {
                    OpentextBoxes(x);
                }
            }
        }

        protected void btn_ipt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Firma.aspx");
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            string yol = "img/logo." + FlUpload.FileName.Split('.');

            try
            {

                //scn("Update Genel_Bilgi set Ad='" + txt_ad.Text + "',KAd='" + txt_kad.Text + "', Adres='" + txt_adres1.Text + "',Adres2='" + txt_adres2.Text + "',Ilce='" + txt_ilce.Text + "',Il='" + txt_il.Text + "',Tel='" + txt_tel.Text + "',Fax='" + txt_fax.Text + "',Web='" + txt_web.Text + "',Mail='" + txt_mail.Text + "',logo=" + yol + " where G_ID= " + 1 + "", "ConnStr");

                //scn("Update Genel_Bilgi set KAd='" + txt_kad.Text + "' where G_ID= " + 1 +"" , "ConnStr");
                //DataTable dt = sc("Update Genel_Bilgi set KAd='" + txt_kad.Text + "'  WHERE G_ID=" + 1 +"", "ConnStr");
                scn("Update Genel_Bilgi set KAd = '" + txt_kad.Text + "' where G_ID =" + 1, "ConnStr");
            }
            catch (Exception ex)
            {
                string hatamsg = ex.Message;
            }
        }
    }
}