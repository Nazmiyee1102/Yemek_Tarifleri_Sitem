<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 66px;
        }

        .auto-style16 {
            width: 674%;
        }

        .auto-style17 {
            width: 31px;
        }

        .auto-style18 {
            width: 28px;
        }

        .auto-style21 {
            font-size: large;
        }

        .auto-style22 {
            font-size: large;
            font-weight: bold;
        }

        .auto-style23 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-size: large;
        }

        .auto-style24 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style16">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-weight: bold; font-size: x-large" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" style="font-size: x-large; font-weight: bold" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>HAKKIMIZDA </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style24"><strong>

                    <em>
                        <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="397px"></asp:TextBox>
                    </em>

                </strong></td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Text="Güncelle" OnClick="Button3_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

