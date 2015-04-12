using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class share : System.Web.UI.Page
{
    logiclayer li = new logiclayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("login.aspx");
        }

        string sIPAddress = null;
        sIPAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (string.IsNullOrEmpty(sIPAddress))
            sIPAddress = Request.ServerVariables["REMOTE_ADDR"];

        Session["ip_add"] = sIPAddress;

        if (!IsPostBack)
        {
            show_things_by_id();
            user_details();
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

    protected void btexp_Click(object sender, EventArgs e)
    {
        li.uid = Session["uid"].ToString();
        li.fname = lblfnamedata.Text;
        li.user_filename = lblfilename.Text;
        li.user_filepath = lblfilepath.Text;
        li.place = txtplace.Text;
        li.topic_name = txttopic.Text;

        if (FileUpload1.HasFile)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("all_user_experience_pics/" + FileName));
            li.filename = FileUpload1.PostedFile.FileName;
            li.filepath = "all_user_experience_pics/" + FileName;
        }
        else
        {
            li.filename = "";
            li.filepath = "";
        }

        li.topic_desc = Editor1.Content;
        li.ip = Session["ip_add"].ToString();

        li.insert_all_user_experience_details(li);

        Response.Redirect("history.aspx");
    }
}