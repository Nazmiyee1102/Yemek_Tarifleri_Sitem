<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style14 {
            background-color: #FFCCCC;
        }
        .auto-style20 {
            width: 302px;
        }
        .auto-style21 {
        width: 78px;
    }
    .auto-style22 {
        width: 77px;
    }
    .auto-style23 {
        width: 31px;
    }
    .auto-style25 {
        width: 29px;
    }
        .auto-style26 {
            width: 302px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style9">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" style="font-size: x-large; font-weight: bold" Text="-" Width="30px" OnClick="Button2_Click1" />
                    </strong></td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
        <asp:DataList ID="DataList1" runat="server" Width="447px" Height="224px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style26">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style20">
                           <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/ikonlar/reading-book.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
</asp:Content>

