using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class people : System.Web.UI.Page
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
            get_people_details();
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

    public void get_people_details()
    {
        DataSet ds = new DataSet();
        li.uid = Session["uid"].ToString();
        ds = li.get_all_users_last_post(li);
        string place = ds.Tables[0].Rows[0]["place"].ToString();
        li.place = place;
        li.uid = Session["uid"].ToString();
        Repeater1.DataSource = li.get_all_releted_users_to_last_location(li);
        Repeater1.DataBind();
    }
}