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
    public partial class login : System.Web.UI.Page
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

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            DataTable dt = sc("select * from Personel where KulAd='" + txtKadi.Text + "' and Sifre='" + txtSifre.Text + "' and Iptal=0", "ConnStr");
            if (dt.Rows.Count == 1)
            {
                Session["PRS_ID"] = dt.Rows[0]["PRS_ID"].ToString();
                Session["AdSoyad"] = dt.Rows[0]["AdSoyad"].ToString();
                Session["Email"] = dt.Rows[0]["Email"].ToString();
                Session["Resim"] = dt.Rows[0]["Resim"].ToString();
                Session["Yetki"] = dt.Rows[0]["Yetki"].ToString();
                Response.Redirect("AdminDefault.aspx");

            }

            else
            {
                ClientScript.RegisterStartupScript(GetType(), "YeniPencere", @"<script language='javascript'>alert('Email veya Şifre Hatalı');</script>");
            }
        }

    }
}