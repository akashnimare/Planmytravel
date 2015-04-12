<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/text.css" rel="stylesheet" type="text/css" />
    <style type="text/css" media="all">
        body
        {
            padding: 0;
            margin: 0;
            background-image: url('mimgs/Lake Pichola and the City Palace,India.jpg');
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
                        <a href="Default.aspx">
                            <img src="mimgs/logo.png" /></a></p>
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
                                    <li class="sub-menu"><a href="login.aspx" style="font-family: 'Raleway', sans-serif;
                                        font-size: 14px;">Login / Register </a></li>
                                    
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
            <div class="login">
                <div class="login_heading" style="font-family: 'Josefin Slab', serif; font-size: 25px;">
                    Welcome To Travel
                </div>
                <div class="login_details" style="font-family: 'Raleway', sans-serif; font-size: 15px;">
                    We strive to reflect comfort, luxury, & the highest ethical standards in our relationships
                    with customers, employees, shareholders and all the people we touch. We also aim
                    to provide customers with more than expected results and value their money with
                    ‘No compromises in the quality standards’. We aim to be acknowledged as global leader
                    not only in travel industry but also in hospitality, aviation and other industries
                    we excel at competitive prices and with consistent customer service.
                </div>
            </div>
            <div class="login">
                <div class="login_heading" style="font-family: 'Josefin Slab', serif; font-size: 25px;">
                    Login
                </div>
                <div class="user_login">
                    <div class="user_name" style="font-family: 'Raleway', sans-serif;">
                        User ID</div>
                    <asp:TextBox ID="txtuid" runat="server" class="txtbox"></asp:TextBox>
                    <div class="clear" style="margin-top: 10px;">
                    </div>
                    <div class="user_name" style="font-family: 'Raleway', sans-serif;">
                        Password</div>
                    <asp:TextBox ID="txtpass" runat="server" class="txtbox" TextMode="Password"></asp:TextBox>
                    <div class="clear" style="margin-top: 10px;">
                    </div>
                    <div style="margin-left: 10px;">
                        <asp:Button ID="btlogin" runat="server" Text="Sign In" class="btn btn-primary btn-lg"
                            Width="150px" Height="40px" OnClick="btlogin_Click" /></div>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" Visible="false" ForeColor="White" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                </div>
            </div>
            <div class="login">
                <div class="login_heading" style="font-family: 'Josefin Slab', serif; font-size: 25px;">
                    New To Travel
                </div>
                <div class="user_login">
                    <div class="user_name" style="font-family: 'Raleway', sans-serif;">
                        First Name</div>
                    <asp:TextBox ID="txtfname" runat="server" class="txtbox"></asp:TextBox>
                    <div class="clear" style="margin-top: 10px;">
                    </div>
                    <div class="user_name" style="font-family: 'Raleway', sans-serif;">
                        Last Name</div>
                    <asp:TextBox ID="txtlname" runat="server" class="txtbox"></asp:TextBox>
                    <div class="clear" style="margin-top: 10px;">
                    </div>
                    <div class="user_name" style="font-family: 'Raleway', sans-serif;">
                        Email ID</div>
                    <asp:TextBox ID="txtemail" runat="server" class="txtbox"></asp:TextBox>
                    <div class="clear" style="margin-top: 10px;">
                    </div>
                    <div class="user_name" style="font-family: 'Raleway', sans-serif;">
                        Password</div>
                    <asp:TextBox ID="txtupass" runat="server" class="txtbox" TextMode="Password"></asp:TextBox>
                    <div class="clear" style="margin-top: 10px;">
                    </div>
                    <div style="margin-left: 10px;">
                        <asp:Button ID="btregis" runat="server" Text="Sign Up" class="btn btn-primary btn-lg"
                            Width="150px" Height="40px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
