using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_details : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("login.aspx");
        }

        if (!IsPostBack)
        {
            show_things_by_id();
        }
    }

    public void show_things_by_id()
    {
        if (Session["uid"] == null)
        {
            login.Visible = true;
            logout.Visible = false;
        }

        else
        {
            login.Visible = false;
            logout.Visible = true;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Session.Clear(); Session.Abandon(); 
        Session["uid"] = null;
        Response.Redirect("Default.aspx");
    }
}