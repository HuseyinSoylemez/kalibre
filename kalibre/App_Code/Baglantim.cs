using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace kalibre.App_Code
{
    public class Baglantim
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
    }
}