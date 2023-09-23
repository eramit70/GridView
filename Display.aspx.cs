using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace GridView18Sep
{
    public partial class Display : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-PM1E9OH\\SQLEXPRESS;Initial Catalog=Locations;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataTable dt = new DataTable();

        string Query;
        protected void Page_Load(object sender, EventArgs e)
        {
            Query = "select * from Student";
            adp = new SqlDataAdapter(Query, conn);
            adp.Fill(dt);
            GridView1.DataSource = dt;

            GridView1.DataBind();




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            //code
         //   DataRow[] dr = dt.Select("sid=" + Convert.ToInt16(((Label)GridView1.Rows[e.RowIndex].FindControl("lb1")).Text);  
        }
    }
}