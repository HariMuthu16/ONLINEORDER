using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ONLINEORDER
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }

    }
    public class Utils
    {
        SqlConnection con;
        SqlCommand cmd;
        public static bool isValidExtention(string FileName)
            {
                bool isValid = false;

                string[] fileExtension = { ".png", ".jpg", ".jpeg" };
                for (int i = 0; i <= fileExtension.Length - 1; i++)
                {
                    if (FileName.Contains(fileExtension[i]))
                    {
                        isValid = true;
                        break;
                    }
                }
                return isValid;
            }

        public static string GetImageUrl(object url)
        {
            string url1;
            if (string.IsNullOrEmpty(url.ToString()) || url == DBNull.Value)
            {
                //url1 = "~/Images/No_image.png";
                url1 = "../Images/No_image.png";
            }
            else
            {
                //url1 = string.Format("~/{0}", url);
                url1 = string.Format("../{0}", url);
            }
           
            return url1;
        }


        public bool updateCartQuantity(int quantity, int productId, int userId)
        {
            bool isUpdated = false;

            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("sp_CartCrud", con);
            cmd.Parameters.AddWithValue("@Action", "UPDATE");
            cmd.Parameters.AddWithValue("@ProductId",productId);
            cmd.Parameters.AddWithValue("@Quantity", quantity);
            cmd.Parameters.AddWithValue("@UserId",userId);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                isUpdated = true;
            }
            catch (Exception ex)
            {
                isUpdated =false;
                System.Web.HttpContext.Current.Response.Write("<script>alert('Error- " + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }
            return isUpdated;
        }
    }
       
    
}