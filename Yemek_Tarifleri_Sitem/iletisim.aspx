<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style8 {
        width: 100%;
        color: #003300;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        text-align: left;
        text-decoration: underline;
        color: #FFFFFF;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
    <tr>
        <td class="auto-style10" colspan="2"><strong><em>-MESAJ PANELİ-</em></strong></td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="txt_gonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="txt_mail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="txt_baslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="txt_mesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="tb8" Text="Gönder" Width="230px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

