<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style14 {
            background-color: #FFCCCC;
        }
        .auto-style23 {
        width: 31px;
    }
        .auto-style21 {
        width: 78px;
    }
    .auto-style25 {
        width: 29px;
    }
        .auto-style22 {
        width: 77px;
    }
        .auto-style26 {
            width: 302px;
            text-align: left;
        }
        .auto-style20 {
            width: 302px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style9">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button1_Click1"  />
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" style="font-size: x-large; font-weight: bold" Text="-" Width="30px" OnClick="Button2_Click1"  />
                    </strong></td>
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
        <asp:DataList ID="DataList1" runat="server" Width="447px" Height="224px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style26">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style20">
                           <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/ikonlar/idea.png" Width="30px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14" style="margin-top:20px;">
    <table class="auto-style9">
        <tr>
            <td class="auto-style23"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" style="font-size: x-large; font-weight: bold" OnClick="Button3_Click"  />
                </strong></td>
            <td class="auto-style25"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px" style="font-size: x-large; font-weight: bold" Text="-" Width="30px" OnClick="Button4_Click"  />
                </strong></td>
            <td>ONAYLI TARİF LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14">
    <asp:DataList ID="DataList2" runat="server" Width="447px" Height="224px">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style26">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style20">
                       <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><asp:Image ID="Image1" runat="server" Height="30px" ImageAlign="Right" ImageUrl="~/ikonlar/idea.png" Width="30px" /></a>
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>

