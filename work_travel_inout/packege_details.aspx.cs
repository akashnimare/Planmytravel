using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class packege_details : System.Web.UI.Page
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
            user_details();
            get_users_post();
            get_comments();
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

    public void user_details()
    {
        DataSet ds = new DataSet();
        li.uid = Session["uid"].ToString();
        ds = li.get_user_all_details(li);
        lblfilename.Text = ds.Tables[0].Rows[0]["filename"].ToString();
        lblfilepath.Text = ds.Tables[0].Rows[0]["filepath"].ToString();
        lblfnamedata.Text = ds.Tables[0].Rows[0]["fname"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        li.uid = Session["uid"].ToString();
        li.eid = Request["pid"].ToString();
        li.fname = lblfnamedata.Text;
        li.comment = Editor1.Content;
        li.insert_all_comment(li);
        get_comments();
    }

    public void get_comments()
    {
        GridView1.DataSource = li.get_all_comments_related_story(li);
        GridView1.DataBind();
    }

    public void get_users_post()
    {
        li.eid = Request["pid"].ToString();
        Repeater1.DataSource = li.get_all_story_information(li);
        Repeater1.DataBind();
    }
}