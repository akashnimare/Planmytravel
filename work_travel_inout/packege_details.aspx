<%@ Page Language="C#" AutoEventWireup="true" CodeFile="packege_details.aspx.cs"
    Inherits="packege_details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
            background-image: url('mimgs/lotus_temple_new_delhi_india.jpg');
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
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
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
                <div class="clear">
                </div>
                <div style="margin-top: 10px;">
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="grid_4" style="padding-left: 2px; margin-left: 5px;">
                            <a>
                                <img width="765" height="350" alt="" src='<%# Eval("topic_filepath") %>' />
                            </a>
                        </div>
                        <div class="clear">
                        </div>
                        <br />
                        <div class="grid_4" style="padding-left: 2px; margin-left: 10px;">
                            <a class="prdocutname" style="font-family: 'Raleway', sans-serif; font-size: 20px;
                                color: White; text-decoration: none;">
                                <asp:Label ID="lblnews1" runat="server" Text='<%# Bind("topic_name") %>'></asp:Label></a>
                            <br />
                        </div>
                        <div class="clear">
                        </div>
                        <div class="grid_4" style="padding-left: 2px; margin-left: 10px;">
                            <a class="prdocutname" style="font-family: 'Raleway', sans-serif; font-size: 20px;
                                color: White; text-decoration: none;">
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("topic_desc") %>'></asp:Label></a>
                            <br />
                        </div>
                        <br />
                        <br />
                        <hr />
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
                <div style="margin-top: 10px;">
                </div>
                <div style="font-family: 'Raleway', sans-serif; font-size: 16px; color: White; text-decoration: none;
                    margin-left: 12px; margin-right: 12px;">
                    All Added Comments on This Post:</div>
                <div class="comments" style="margin-left: 12px; margin-right: 12px;">
                    <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" CssClass="GridViewStyle"
                        EmptyDataText="There is no Comments Yet ! Be first to Comment." Width="100%"
                        GridLines="Horizontal">
                        <Columns>
                            <asp:TemplateField HeaderText="Name" ItemStyle-Width="200">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Comment" ItemStyle-Width="300">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("comment") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Added Date" ItemStyle-Width="100">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("added_date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <%-- <div class="cmt_prsn">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="cmt_des">
                        <div class="cmt_dt">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="cmt_des1">
                            <p>
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>
                        <div class="clear">
                        </div>
                    </div>--%>
                    <asp:Label ID="lblfilename" runat="server" Visible="false" Text=""></asp:Label>
                    <asp:Label ID="lblfilepath" runat="server" Visible="false" Text=""></asp:Label>
                    <asp:Label ID="lblfnamedata" runat="server" Visible="false" Text=""></asp:Label>
                </div>
                <div style="margin-top: 10px;">
                </div>
                <div style="font-family: 'Raleway', sans-serif; font-size: 16px; color: White; text-decoration: none;">
                    Add Comments :</div>
                <cc1:Editor ID="Editor1" runat="server" />
                <div style="margin-top: 10px; float: right">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg"
                        Width="100px" Height="30px" OnClick="Button1_Click" />
                    <br />
                    <br />
                </div>
            </div>
            <div class="grid_1" style="width: 200px; margin-top: 20px">
            </div>
        </div>
    </div>
    </form>
</body>
</html>
