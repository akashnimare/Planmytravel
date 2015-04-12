<%@ Page Language="C#" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="city" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            background-image: url('mimgs/bg10.jpg');
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
                                    <li class="sub-menu"><a href="account.aspx" style="font-family: 'Raleway', sans-serif;
                                        font-size: 14px;">Login / Register </a></li>
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
            <div class="tab1" style="font-family: 'Raleway', sans-serif;">
                Select Your Interest</div>
            <div class="grid_2" style="background: rgba(255,255,255,0.5); margin-left: 0px; padding-left: 2px;">
                <div class="tab1_item">
                    <a href="">
                        <img src="mimgs/interest/Adventure.jpg" /></a>
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/beach.jpg" />
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/desert.jpg" />
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/forest.jpg" />
                </div>
                <div class="clear">
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/nature.jpg" />
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/resort.jpg" />
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/tample.JPG" />
                </div>
                <div class="tab1_item">
                    <img src="mimgs/interest/tracking.jpg" />
                </div>
                <%--<asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary btn-lg"
                    Width="150px" Height="40px" />--%>
                <div class="clear">
                </div>
                <div style="margin-top: 10px;">
                </div>
            </div>
            <div class="grid_2">
                <div class="grid_4" style="background: rgba(255,255,255,0.5); margin-left: 0px; padding-left: 2px";>
                    <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                    <div class="grid_2" style="background: rgba(255,255,255,0.5); margin-left: 0px; padding-left: 2px;
                        height: 330px; width: 250px;">
                        <div class="grid_4" style="background: rgba(255,255,255,0.5); padding-left: 2px;
                            height: 165px; width: 225px; margin-left: 10px;">
                            <a href='packege_details.aspx?PID=<%# Eval("PBDID") %>'>
                                <img width="225" height="165" alt="" src='<%# Eval("img_filepath") %>' />
                            </a>
                        </div>
                        <div class="grid_4" style="background: rgba(255,255,255,0.5); padding-left: 2px;
                            height: 165px; width: 225px; margin-left: 10px;">
                            <a class="prdocutname" href='packege_details.aspx?PID=<%# Eval("PBDID") %>'><asp:Label ID="lblpname1" runat="server" Text='<%# Bind("packege_name") %>'></asp:Label></a>
                            <br />
                            INR <asp:Label ID="lblprice" runat="server" Text='<%# Bind("packege_price") %>'></asp:Label>
                        </div>
                    </div>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                    </asp:Repeater>
                    <%--<asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary btn-lg"
                    Width="150px" Height="40px" />--%>
                    <div class="clear">
                    </div>
                    <div style="margin-top: 10px;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
