using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class city : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            get_packeges();
        }
    }

    public void get_packeges()
    {
        try
        {
            if (Request["IID"] != null)
            {
                DataSet ds = new DataSet();
                li.interest = Request["IID"].ToString();
                ds = li.get_all_city_by_interest(li);
                string interest = ds.Tables[0].Rows[0]["place_name"].ToString();
                li.city = interest;
                Repeater1.DataSource = li.get_all_pakeges_by_interest(li);
                Repeater1.DataBind();
            }
        }
        catch
        {
            Response.Redirect("Default.aspx");
        }
    }
}