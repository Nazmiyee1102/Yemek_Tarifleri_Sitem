<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
        font-size: x-large;
        color: #FFFFFF;
    }
    .auto-style7 {
        text-align: left;
        color: #FFFFFF;
    }
    .auto-style8 {
        color: #FFFFFF;
    }
    .auto-style9 {
        text-align: center;
        color: #FFFFFF;
    }
        .auto-style10 {
            text-align: center;
            color: #FFFFFF;
            font-size: 16pt;
            height: 30px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList3" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Malzemeler: </strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Yapılışı: </strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Image ID="Image1" runat="server" Height="175px" Width="311px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Puan: </strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Tarih: </strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

