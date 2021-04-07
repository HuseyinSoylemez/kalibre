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
    
    public partial class Kategori : System.Web.UI.Page
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
                if (Session["PRS_ID"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    listele();
                }

                if (Request["i"] != null)
                {
                    btn_kaydet.Text = "Güncelle";
                    btn_ipt.Visible = true;
                    DataTable dt = sc("select * from Kategori WHERE KT_ID=" + Request["i"], "ConnStr");

                    if (dt.Rows.Count == 1)
                    {

                        txt_tip.Text = dt.Rows[0]["KategoriAd"].ToString();
                       
                    }
                }
            }
             
        }

      
        public void listele()
        {
            DataTable dt = sc("select * from Kategori", "ConnStr");
            rpt_tip.DataSource = dt;
            rpt_tip.DataBind();
        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            try
            {
                if (btn_kaydet.Text == "Ekle")
                {
                    DataTable dt = sc("Insert into  Kategori (KategoriAd) VALUES  ('" + txt_tip.Text + "')", "ConnStr");
                    txt_tip.Text = "";
                    listele();

                }
                else if (btn_kaydet.Text == "Güncelle")
                {
                    DataTable dt = sc("Update Kategori set KategoriAd='" + txt_tip.Text + "' where KT_ID = " + Request["i"] + "", "ConnStr");

                    listele();
                }
            }
            catch (Exception ex)
            {

                string hatamsg = ex.Message;
            }
        }

        protected void btn_ipt_Click(object sender, EventArgs e)
        {
            btn_kaydet.Text = "Ekle";
            btn_ipt.Visible = false;
            txt_tip.Text = "";
            Response.Redirect("Kategori.aspx");
        }

        protected void rpt_tip_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "sil")
            {
                scn("Delete from Kategori where KT_ID=" + e.CommandArgument.ToString(), "ConnStr");
                listele();
            }
            if (e.CommandName == "dzn")
            {
                Response.Redirect("Kategori.aspx?i=" + e.CommandArgument.ToString());
                listele();
            }
        }

    }
}