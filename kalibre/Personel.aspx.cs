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
    public partial class Personel : System.Web.UI.Page
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

                    listele();
                    //Ddl_mt.DataSource = sc("select * from MusteriTip", "ConnStr");
                    //Ddl_mt.DataTextField = "Tip";
                    //Ddl_mt.DataValueField = "MT_ID";
                    //Ddl_mt.DataBind();

                    Ddl_il.DataSource = sc("select *from iller", "ConnStr");
                    Ddl_il.DataTextField = "sehir";
                    Ddl_il.DataValueField = "id";
                    Ddl_il.DataBind();

                    Ddl_ilce.DataSource = sc("select * from ilceler where sehir=1", "ConnStr");
                    Ddl_ilce.DataTextField = "ilce";
                    Ddl_ilce.DataValueField = "id";
                    Ddl_ilce.DataBind();

                    //DataTable dt = sc("select * from Bolge", "ConnStr");
                    //Ddl_bolge.DataSource = dt;
                    //Ddl_bolge.DataTextField = Ddl_bolge.DataValueField = "Bolge";
                    //Ddl_bolge.DataBind();

                }

                //if (Request["i"] != null)
                //{
                //    btn_kaydet.Text = "Güncelle";
                //    btn_ipt.Visible = true;
                //    DataTable dt = sc("select * from Musteri WHERE M_ID=" + Request["i"], "ConnStr");

                //    if (dt.Rows.Count == 1)
                //    {
                //        txt_adsoyad.Text = dt.Rows[0]["AdSoyad"].ToString();
                //        txt_tc.Text = dt.Rows[0]["TCNo"].ToString();
                //        txt_email.Text = dt.Rows[0]["Email"].ToString();
                //        txt_cep1.Text = dt.Rows[0]["Cep1"].ToString();
                //        txt_cep2.Text = dt.Rows[0]["Cep2"].ToString();
                //        Ddl_il.SelectedValue = dt.Rows[0]["Il_Id"].ToString();
                //        Ddl_ilce.DataSource = sc("select *from ilceler where sehir=" + dt.Rows[0]["Il_Id"].ToString() + "", "ConnStr");
                //        Ddl_ilce.DataTextField = "ilce";
                //        Ddl_ilce.DataValueField = "id";
                //        Ddl_ilce.DataBind();
                //        Ddl_ilce.SelectedValue = dt.Rows[0]["Ilce_Id"].ToString();


                //        Ddl_bolge.DataSource = sc("select *from Bolge where Ilce_Id=" + dt.Rows[0]["Ilce_Id"].ToString() + " and Il_Id=" + dt.Rows[0]["Il_Id"].ToString() + "", "ConnStr");
                //        Ddl_bolge.DataTextField = "Bolge";
                //        Ddl_bolge.DataValueField = "BLG_ID";
                //        Ddl_bolge.DataBind();
                //        Ddl_bolge.SelectedValue = dt.Rows[0]["Blg_Id"].ToString(); ;
                //        // Ddl_bolge.SelectedItem.Text = dt.Rows[0]["Bolge"].ToString();
                //        txt_adres.Text = dt.Rows[0]["Adres"].ToString();
                //        Ddl_mt.SelectedValue = dt.Rows[0]["MsTip"].ToString();
                //        rb_durum.SelectedValue = dt.Rows[0]["Iptal"].ToString();
                //        listele();
                //    }
                //}

            }


        }


        public void listele()
        {
            DataTable dt = sc("select * from Personel", "ConnStr");
            rpt_personel.DataSource = dt;
            rpt_personel.DataBind();
        }

        protected void Ddl_il_SelectedIndexChanged(object sender, EventArgs e)
        {
            Ddl_ilce.DataSource = sc("select c.* from ilceler c inner join iller i on c.sehir = i.id where i.id = '" + Ddl_il.SelectedValue + "'", "ConnStr");
            Ddl_ilce.DataTextField = "ilce";
            Ddl_ilce.DataValueField = "id";
            Ddl_ilce.DataBind();
        }

        protected void res_ekle_Click(object sender, EventArgs e)
        {
            //if (FlUpload.HasFile)
            //{
            //    try
            //    {

            //        if (FlUpload != null &&
            //       (FlUpload.PostedFile.ContentType == "image/jpeg" ||
            //       FlUpload.PostedFile.ContentType == "image/jpg" ||
            //       FlUpload.PostedFile.ContentType == "image/png"))
            //        {

            //            string yol = "profil/p_" + txt_adsoyad.Text.Trim();


            //            FlUpload.SaveAs(Server.MapPath(yol));
            //            img_profil.ImageUrl = yol;

            //        }
            //        else
            //        {
            //            ClientScript.RegisterStartupScript(GetType(), "YeniPencere", @"<script language='javascript'>alert('Resim Formatına Dikkat Ediniz.');</script>");
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        ClientScript.RegisterStartupScript(GetType(), "YeniPencere", @"<script language='javascript'>alert(ex.Message);</script>"); 
            //    } 
            //}

            if (FlUpload.HasFile)
            {
                try
                {

                    if (FlUpload != null &&
                           (FlUpload.PostedFile.ContentType == "image/jpeg" ||
                           FlUpload.PostedFile.ContentType == "image/jpg" ||
                           FlUpload.PostedFile.ContentType == "image/png"))
                    {

                        string[] uzanti = FlUpload.FileName.Split('.');
                        FlUpload.SaveAs(Server.MapPath("profil/" + txt_adsoyad.Text.Replace(" ", "").Trim().ToLower() + "." + uzanti[1]));

                        img_profil.ImageUrl = "profil/" + txt_adsoyad.Text.Replace(" ", "").Trim().ToLower() + "." + uzanti[1];
                        string yol = "profil/" + txt_adsoyad.Text.Replace(" ", "").Trim().ToLower() + "." + uzanti[1];

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

        protected void rpt_personel_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "sil")
            {
                scs("Delete from Personel where PRS_ID=" + e.CommandArgument.ToString(), "ConnStr");
                scs("Delete from Is_Bilgiler where PRS_ID=" + e.CommandArgument.ToString(), "ConnStr");
                listele();
            }
            if (e.CommandName == "dzn")
            {
                Response.Redirect("Personel.aspx?i=" + e.CommandArgument.ToString());
                listele();
            }
        }

    }
}