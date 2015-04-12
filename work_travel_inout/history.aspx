<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="history" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href='http://fonts.googleapis.com/css?family=Josefin+Slab' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Capriola' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600'
        rel='stylesheet' type='text/css'>
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/text.css" rel="stylesheet" type="text/css" />
    <style type="text/css" media="all">
        body
        {
            padding: 0;
            margin: 0;
            background-image: url('mimgs/rajasthan-map-hd-wallpaper-15.jpg');
            background-size: 100% auto;
            background-attachment: fixed;
            font-family: 'Roboto' , arial, helvetica, sans-serif;
        }
        a
        {
            color: #333;
            text-decoration: underline;
        }
        a:hover
        {
            text-decoration: none;
        }
        .container_4 h1
        {
            font-family: Georgia, serif;
            font-weight: normal;
            text-align: center;
        }
        .container_4 h2
        {
            padding: 20px 0 0;
            font-family: Georgia, serif;
            font-weight: normal;
            text-align: center;
        }
        .container_4 p
        {
            overflow: hidden;
            padding: 10px 0;
            text-align: center;
            font-size: 80%;
        }
        .container_4
        {
            background-color: transparent;
            background-repeat: repeat-y;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 100%; height: 60px; background-color: Black;">
            <div class="container_4">
                <div class="clear">
                    &nbsp;</div>
                <div class="grid_1">
                    <p>
                        <img src="mimgs/logo.png" /></p>
                </div>
                <div class="grid_3">
                    <div class="navbar navbar_">
                        <div class="container">
                            <!--=========== menu ===============-->
                            <div class="nav-collapse nav-collapse_ collapse">
                                <ul class="nav sf-menu">
                                    <li class="sub-menu"><a href="Default.aspx" style="font-family: 'Raleway', sans-serif;
                                        font-size: 14px;">Home</a> </li>
                                    <li class="sub-menu"><a href="Default.aspx" style="font-family: 'Raleway', sans-serif;
                                        font-size: 14px;">Plan my Travel </a></li>
                                    <li class="sub-menu"><a href="share.aspx" style="font-family: 'Raleway', sans-serif;
                                        font-size: 14px;">Share / Find </a></li>
                                    <li id="login" runat="server" class="sub-menu"><a href="login.aspx" style="font-family: 'Raleway', sans-serif;
                                        font-size: 14px;">Login / Register </a></li>
                                    <li id="logout" runat="server" visible="false" class="sub-menu">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="container_4">
            <a href="history.aspx">
                <div class="loginmenu" style="font-family: 'Josefin Slab', serif; font-size: 20px;">
                    History</div>
            </a><a href="all_story.aspx">
                <div class="loginmenu" style="font-family: 'Josefin Slab', serif; font-size: 20px;">
                    User's Story</div>
            </a><a href="share.aspx">
                <div class="loginmenu" style="font-family: 'Josefin Slab', serif; font-size: 20px;">
                    Tell Something About Your Expericence</div>
            </a><a href="people.aspx">
                <div class="loginmenu" style="font-family: 'Josefin Slab', serif; font-size: 20px;">
                    Find People</div>
            </a><a href="book_cab.aspx">
                <div class="loginmenu" style="font-family: 'Josefin Slab', serif; font-size: 20px;">
                    Book A Cab</div>
            </a>
            <div class="clear">
            </div>
            <div class="grid_3" style="background: rgba(0,0,0,0.5); margin-left: 0px;">
                <%--<asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary btn-lg"
                    Width="150px" Height="40px" />--%>
                <div class="clear">
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="grid_4" style="padding-left: 2px; margin-left: 5px;">
                            <a href='packege_details.aspx?PID=<%# Eval("UEID") %>'>
                                <img width="765" height="350" alt="" src='<%# Eval("topic_filepath") %>' />
                            </a>
                        </div>
                        <div class="clear">
                        </div>
                        <br />
                        <div class="grid_4" style="padding-left: 2px; margin-left: 10px;">
                            <a class="prdocutname" href='packege_details.aspx?PID=<%# Eval("UEID") %>' style="font-family: 'Raleway', sans-serif; font-size: 20px; color:White; text-decoration:none;">
                                <asp:Label ID="lblnews1" runat="server" Text='<%# Bind("topic_name") %>'></asp:Label></a>
                            <br />
                        </div>
                        <br />
                        <hr />
                        <br />
                        <br />
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <div class="grid_1" style="width: 200px; margin-top: 20px">
            </div>
        </div>
    </div>
    </form>
</body>
</html>
