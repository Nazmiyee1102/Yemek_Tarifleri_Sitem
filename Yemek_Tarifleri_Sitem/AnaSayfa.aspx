<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
            color: #3333FF;
        }
        .auto-style8 {
            color: #FFFFFF;
            background-color: #99CCFF;
        }
        .auto-style9 {
            margin-right: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList3" runat="server" CssClass="auto-style9" Width="446px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>
                    <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"><span class="auto-style6"><strong>Malzemeler:</strong></span>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><span class="auto-style6"><strong>Yemek Tarifi: </strong></span>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><span class="auto-style6"><strong>Eklenme Tarihi:</strong></span>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <span class="auto-style6">&nbsp;- </span><strong><em><span class="auto-style6">Puan: </span>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td class="auto-style6" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>

