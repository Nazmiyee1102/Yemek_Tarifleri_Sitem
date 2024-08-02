<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            font-size: 30pt;
            color: #FFFFFF;
        }
        .auto-style10 {
            color: #003300;
        }
        .auto-style11 {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style12 {
            color: #003300;
            text-align: right;
        }
        .auto-style13 {
            color: #003300;
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label4" runat="server" style="font-weight:700; color:#FFFFFF; " CssClass="auto-style7" Text="Label"></asp:Label>
    <br />
    </strong>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList3" runat="server" Width="438px" CssClass="auto-style10">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("YorumAdSoyad") %>' CssClass="auto-style9"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("Yorumicerik") %>'></asp:Label>
                                    &nbsp;-
                                    <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text='<%#Eval("YorumTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <div class="auto-style11"><strong><em>-YORUM YAPMA PANELİ-</em></strong></div>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12"><strong>Ad Soyad:</strong></td>
                            <td>
                                <asp:TextBox ID="txt_ad" runat="server" CssClass="auto-style10" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12"><strong>Mail:</strong></td>
                            <td>
                                <asp:TextBox ID="txt_mail" runat="server" CssClass="auto-style10" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12"><strong>Yorumunuz:</strong></td>
                            <td>
                                <asp:TextBox ID="txt_yorum" runat="server" CssClass="auto-style10" Height="100px" TextMode="MultiLine" Width="202px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td><strong>
                                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" OnClick="Button1_Click" style="height: 26px" Text="Yorum Yap" Width="200px" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

