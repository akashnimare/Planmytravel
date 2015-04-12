using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for datalayer
/// </summary>
public class datalayer
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

	public datalayer()
	{

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

		//
		// TODO: Add constructor logic here
		//
	}

    public DataSet get_packeges_by_interest(logiclayer li)
    {
        da = new SqlDataAdapter("select * from packeges_basic_Details where cities like '%" + li.city + "%' order by NEWID()", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet get_city_by_interest(logiclayer li)
    {
        da = new SqlDataAdapter("select top 1 * from places where interest_topic='" + li.interest + "' order by NEWID()", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet login(logiclayer li)
    {
        da = new SqlDataAdapter("select * from user_master where email=@username and pwd=@password", cn);
        da.SelectCommand.Parameters.AddWithValue("@username", li.email);
        da.SelectCommand.Parameters.AddWithValue("@password", li.password);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet get_users_details(logiclayer li)
    {
        da = new SqlDataAdapter("select * from user_master where ID='"+ li.uid  +"'", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void insert_user_experience(logiclayer li)
    {
        cmd = new SqlCommand("insert into all_user_experience (uid,fname,user_filename,user_filepath,place,topic_name,topic_filename,topic_filepath,topic_desc,added_date,ip_add) values(@uid,@fname,@u_fn,@u_fp,@place,@name,@fn,@fp,@desc,getdate(),@ip_add)", cn);
      
        cmd.Parameters.AddWithValue("@uid", li.uid);
        cmd.Parameters.AddWithValue("@fname", li.fname);
        cmd.Parameters.AddWithValue("@u_fn", li.user_filename);
        cmd.Parameters.AddWithValue("@u_fp", li.user_filepath);
        cmd.Parameters.AddWithValue("@place", li.place);
        cmd.Parameters.AddWithValue("@name", li.topic_name);
        cmd.Parameters.AddWithValue("@fn", li.filename);
        cmd.Parameters.AddWithValue("@fp", li.filepath);
        cmd.Parameters.AddWithValue("@desc", li.topic_desc);
        cmd.Parameters.AddWithValue("@ip_add", li.ip);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet get_users_post(logiclayer li)
    {
        da = new SqlDataAdapter("select * from all_user_experience where uid='"+  li.uid +"' order by UEID DESC", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet get_users_story(logiclayer li)
    {
        da = new SqlDataAdapter("select * from all_user_experience order by UEID DESC", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet get_users_last_post(logiclayer li)
    {
        da = new SqlDataAdapter("select top 1 * from all_user_experience where uid='" + li.uid + "' order by UEID DESC", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet get_related_users_to_locations(logiclayer li)
    {
        da = new SqlDataAdapter("select * from all_user_experience where place='" + li.place + "' and uid!='"+ li.uid +"' order by UEID DESC", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void insert_comment(logiclayer li)
    {
        cmd = new SqlCommand("insert into comment_master (uid,eid,fname,comment,added_date) values(@uid,@eid,@fname,@comment,getdate())", cn);

        cmd.Parameters.AddWithValue("@uid", li.uid);
        cmd.Parameters.AddWithValue("@eid", li.eid);
        cmd.Parameters.AddWithValue("@fname", li.fname);
        cmd.Parameters.AddWithValue("@comment", li.comment);        
        
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public DataSet get_comments_to_reletaed_story(logiclayer li)
    {
        da = new SqlDataAdapter("select * from comment_master where eid='" + li.eid + "' order by CMID DESC", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet get_story_to_information(logiclayer li)
    {
        da = new SqlDataAdapter("select * from all_user_experience where UEID='" + li.eid + "'", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
}