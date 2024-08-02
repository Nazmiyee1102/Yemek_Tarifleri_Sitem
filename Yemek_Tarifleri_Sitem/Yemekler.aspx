<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            background-color: #FFCCCC;
        }
    .auto-style19 {
        text-align: right;
    }
        .auto-style20 {
            width: 302px;
        }
        .auto-style21 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }
        .auto-style23 {
            width: 30px;
        }
        .auto-style24 {
            width: 24px;
        }
        .auto-style26 {
            background-color: #FFCCCC;
            text-align: right;
        }
        .auto-style27 {
            background-color: #FFCCCC;
            text-align: center;
        }
        .auto-style28 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-size: large;
            margin-top: 0px;
        }
    .auto-style29 {
        background-color: #FFCCCC;
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style9">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
        <asp:DataList ID="DataList1" runat="server" Width="447px" Height="224px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19" style="width:52px;">
                           <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a> 
                        </td>
                        <td class="auto-style19" style="width:52px;">
                           <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3"  runat="server" CssClass="auto-style14" style="margin-top:15px;">
    <table class="auto-style9">
        <tr>
            <td class="auto-style23"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
            <td class="auto-style24"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
            <td>YEMEK EKLEME</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14">
        <table class="auto-style9">
    <tr>
        <td class="auto-style29"></td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style26"><strong>YEMEK AD:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="275px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style26"><strong>YEMEK MALZEME:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
        </td>
    </tr>
            <tr>
                <td class="auto-style26"><strong>YEMEK TARİFİ:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>KATEGORİ:</strong></td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="275px">
                    </asp:DropDownList>
                </td>
            </tr>
    <tr>
        <td class="auto-style26"><strong></strong></td>
        <td class="auto-style27">
            <strong>
            <asp:Button ID="btn_ekle" runat="server" CssClass="auto-style28" Height="27px" OnClick="btn_ekle_Click" Text="Ekle" Width="98px" />
            </strong>
        </td>
    </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
</table>
    </asp:Panel>
    
    </asp:Content>

