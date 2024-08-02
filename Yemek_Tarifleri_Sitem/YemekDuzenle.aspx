<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
            font-size: large;
            width: 808px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: 18pt;
            background-color: #33CC33;
        }
        .auto-style21 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style22 {
            text-align: right;
            font-size: medium;
            width: 808px;
            color: #000000;
        }
        .auto-style23 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            margin-left: 0px;
        }
        .auto-style24 {
            margin-left: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="330px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="330px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarifi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style23" Height="200px" TextMode="MultiLine" Width="330px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="330px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Yemek Görüntü:</td>
            <td class="auto-style17">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style17"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="31px" OnClick="Button1_Click" Text="Güncelle" Width="330px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="33px" OnClick="Button3_Click" Text="Günün Yemeği Seç" Width="330px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

