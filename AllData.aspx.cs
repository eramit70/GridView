using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;



namespace GridView18Sep
{
    public partial class AllData : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-PM1E9OH\\SQLEXPRESS;Initial Catalog=Assignment;Integrated Security=True");
        string Query;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }
        }

        void Insert()
        {
            Query = "insert into Result(sname,ssubject,smarks) values(@sname,@ssubject,@smarks)";
            cmd = new SqlCommand(Query, conn);
            cmd.CommandType= CommandType.Text;
            cmd.Parameters.AddWithValue("@sname",txtname.Text.Trim());  
            cmd.Parameters.AddWithValue("@ssubject",txtsub.Text.Trim());

            cmd.Parameters.AddWithValue("@smarks", txtmarks.Text);

            if(conn.State== ConnectionState.Closed)
            {
                conn.Open();    
            }

            cmd.ExecuteNonQuery();
            MessageBox.Show("Data Has Inserted ");
            Response.AddHeader("refresh", "1");

            if(conn.State==ConnectionState.Open)
            {
                conn.Close();
            }
        }

        

        void Display()
        {
            Query = "Select * from Result";

            SqlDataAdapter adp = new SqlDataAdapter(Query,conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);

           // GridView1.DataSource= dt;   
            GridView1.DataBind();   

        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            Insert();   
        }
    }
}