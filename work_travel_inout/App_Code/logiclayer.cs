using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for logiclayer
/// </summary>
public class logiclayer
{
    datalayer dl = new datalayer();
    public string city { get; set; }
    public string interest { get; set; }
    public string email { get; set; }
    public string password { get; set; }
    public string user_filename { get; set; }
    public string user_filepath { get; set; }
    public string fname { get; set; }
    public string filename { get; set; }
    public string uid { get; set; }
    public string place { get; set; }
    public string topic_name { get; set; }
    public string topic_desc { get; set; }
    public string ip { get; set; }
    public string filepath { get; set; }
    public string eid { get; set; }
    public string comment { get; set; }

	public logiclayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataSet get_all_pakeges_by_interest(logiclayer li)
    {
        return dl.get_packeges_by_interest(li);
    }

    public DataSet get_all_city_by_interest(logiclayer li)
    {
        return dl.get_city_by_interest(li);
    }

    public DataSet get_login_details(logiclayer li)
    {
        return dl.login(li);
    }

    public DataSet get_user_all_details(logiclayer li)
    {
        return dl.get_users_details(li);
    }

    public void insert_all_user_experience_details(logiclayer li)
    {
        dl.insert_user_experience(li);
    }

    public DataSet get_all_usera_post(logiclayer li)
    {
        return dl.get_users_post(li);
    }

    public DataSet get_all_usera_story(logiclayer li)
    {
        return dl.get_users_story(li);
    }

    public DataSet get_all_users_last_post(logiclayer li)
    {
        return dl.get_users_last_post(li);
    }

    public DataSet get_all_releted_users_to_last_location(logiclayer li)
    {
        return dl.get_related_users_to_locations(li);
    }

    public void insert_all_comment(logiclayer li)
    {
        dl.insert_comment(li);
    }

    public DataSet get_all_comments_related_story(logiclayer li)
    {
        return dl.get_comments_to_reletaed_story(li);
    }

    public DataSet get_all_story_information(logiclayer li)
    {
        return dl.get_story_to_information(li);
    }
}