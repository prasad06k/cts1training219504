using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S = System.Data.SqlClient;


namespace WebApplication1
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebService1 Service1 = new WebService1();


            Label1.Text = Service1.HelloWorld(); 

            using (var connection = new S.SqlConnection(
                   "Server=tcp:dab03lchni.database.windows.net,1433;Initial Catalog=SqlCTS219504;Persist Security Info=False;User ID=saadmin;Password=password-1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
                   ))
            {
                connection.Open();
                //Label1.Text = "Connected successfully.";

                using (var command = new S.SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandType = System.Data.CommandType.Text;

                    command.CommandText = @"SELECT * from TrackEmployee";

                    S.SqlDataReader reader = command.ExecuteReader();

                    DataTable dt = new DataTable();
                    dt.Load(reader);

                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
            }
        }
    }
}