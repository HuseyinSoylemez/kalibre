using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kalibre
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["PRS_ID"] == null)
            {
                Session.Clear();
                Response.Redirect("login.aspx");
                return;
            }
            else
            {
                if (Session["Yetki"].ToString() == "1")
                {
                    pnl1.Visible = true;
                    pnl2.Visible = true;
                    
                }
                else if (Session["Yetki"].ToString() == "2")
                {
                    pnl1.Visible = false;
                    pnl2.Visible = true;

                }
                else
                {
                    pnl1.Visible = false;
                    pnl2.Visible = false;
                }

            }

        }

        public void cikis(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("login.aspx");

        }

        protected void btn_cikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }
    }
}