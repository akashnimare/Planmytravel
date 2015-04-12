using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            Response.Redirect("login.aspx");
        }

        if (!IsPostBack)
        {
            //show_things_by_id();
        }
    }

    //public void show_things_by_id()
    //{
    //    if (Session["uid"] == null)
    //    {
    //        login.Visible = true;
    //        logout.Visible = false;
    //    }

    //    else
    //    {
    //        login.Visible = false;
    //        logout.Visible = true;
    //    }
    //}

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Session.Clear(); Session.Abandon(); 
        Session["uid"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void btlogin_Click(object sender, EventArgs e)
    {
        li.email = txtuid.Text;
        li.password = txtpass.Text;

        if (Request["PID"] == null && Request["WID"] == null)
        {
            DataSet ds = new DataSet();
            ds = li.get_login_details(li);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0][0].ToString();

                //   string url = "~/sample.aspx?UID = " + Session["uid"];
                //Response.Redirect("M_ZONE/Default.aspx?UID=" + Session["uid"]);
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Email or Password is Incorrect, Please try again !!";
            }
            txtuid.Text = "";
            txtpass.Text = "";
        }
    }
}