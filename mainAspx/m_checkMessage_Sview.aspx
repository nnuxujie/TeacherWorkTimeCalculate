﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_checkMessage_Sview.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/m_checkMessage.css" type="text/css"/>
        <style type="text/css">
        .auto-style3{
            width: 100%;
            height:120px;
            background-color:#eef1f7;
            background-image:url('bg.png');
            border-bottom:0px solid #c7cedc;
        }
        .auto-style4{
           height:670px;
           padding-left:20%;
           padding-right:20%;
        }
         .auto-style5{
            width:80px;
            height:20px;            
            background-image:url('submit.png');
            background-repeat:no-repeat;         
            background-position:center;
        }  
        </style>
</head>
<body class="con">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <div style="height:40px"></div>
            <table style="width:100%">
                <tr>
                    <td style="width:8%"></td>
                    <td style="width:18%"><asp:Label ID="Label3" runat="server" Text="当前页面：留言详情"></asp:Label></td>
                    <td></td>
                    <td style="width:18%"><asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/back.png"  OnClick="btnBack_Click" CssClass="auto-style5"/></td>
                </tr>
                <tr style="height:20px">
                    <td></td>
                    <td></td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/images/SEND2.png" OnClick="ImageButton1_Click" Width="80px" />&nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/images/RECEIVE1.png" OnClick="ImageButton2_Click" Width="80px" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        &nbsp;
    <div class="auto-style4">
        <table style="width:100%;">
            <tr style="height:40px">
                <td style="text-align:center;width:30%">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/adimg1.png" Height="19px"/>
                    <asp:Label ID="Label4" runat="server" Text="工号" ForeColor="#040404"></asp:Label>
                </td>
                <td style="text-align:center;width:20%"><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td></td>
            </tr>        
             <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:40px">
                <td style="text-align:center;width:30%">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/adimg2.png"/>
                    <asp:Label ID="Label5" runat="server" Text="姓名" ForeColor="#040404"></asp:Label>
                </td>
                <td style="text-align:center;width:20%"><asp:TextBox ID="TextBox1" runat="server"  ReadOnly="True"></asp:TextBox></td>
                <td></td>
            </tr>    
             <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:40px">
                <td style="text-align:center;width:30%">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/adimg3.png"/>
                    <asp:Label ID="Label6" runat="server" Text="留言主题" ForeColor="#040404" ></asp:Label>
                </td>
                <td style="text-align:center;width:20%"><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" ></asp:TextBox></td>
                <td></td>
            </tr>        
             <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:120px">
                <td colspan="3">
                    <asp:TextBox ID="TextBox4" runat="server" Height="100%" ReadOnly="True" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:20px">
                <td colspan="3"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
