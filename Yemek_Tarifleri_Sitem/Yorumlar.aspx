<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style9">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" Text="-" Width="30px" />
                    </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
        <asp:DataList ID="DataList1" runat="server" Width="447px" Height="224px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style19" style="width:52px;">
                           <a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a> 
                        </td>
                        <td class="auto-style19" style="width:52px;">
                           <a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3"  runat="server" CssClass="auto-style14" style="background-color:#FFCCCC; margin-top:15px;">
    <table class="auto-style9">
        <tr>
            <td class="auto-style23"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
            <td class="auto-style24"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
            <td>ONAYSIZ YORUM LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14">
        <asp:DataList ID="DataList2" runat="server" Width="447px" Height="224px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style19" style="width:52px;"><a href="Yorumlar.aspx?Kategoriid=<%#Eval("Yorumid")%>&islem=sil">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" />
                            </a></td>
                        <td class="auto-style19" style="width:52px;">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh.png" Width="30px" />
                            </a>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    
        <asp:Panel ID="Panel5" runat="server" CssClass="auto-style14">
</asp:Panel>
    </asp:Content>

