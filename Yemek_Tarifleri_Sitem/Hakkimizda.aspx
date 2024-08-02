<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style8">
    <asp:DataList ID="DataList3" runat="server" CssClass="auto-style6" Width="450px">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:Image runat="server" Height="150px" ImageUrl="~/resimler/blog.jpg" Width="450px"></asp:Image>
</asp:Content>

