using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ONLINEORDER.User
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Session["userId"] != null)
                {
                Response.Redirect("Default.aspx");
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "Admin" && txtPassWord.Text.Trim() == "123")
            {
                Session["admin"] = txtUserName.Text.Trim();
                //  Session["admin"] = "Admin";
                Response.Redirect("../Admin/Dashboard.aspx");
            }
            else
            {
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("sp_UserCrud", con);
                cmd.Parameters.AddWithValue("@Action", "SELECTFORLOGIN");
                cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassWord.Text.Trim());
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count == 1)
                {
                    Session["username"] = txtUserName.Text.Trim();
                    Session["userId"] = dt.Rows[0]["UserId"];
                    Response.Redirect("Default.aspx");

                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Login Information Not Valid!!";
                    lblMsg.CssClass = "alert alert-danger";
                }


            }


        }
    }
}