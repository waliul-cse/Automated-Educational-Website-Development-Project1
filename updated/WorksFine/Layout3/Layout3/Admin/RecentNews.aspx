<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="RecentNews.aspx.cs" Inherits="Layout3.Admin.RecentNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<table style="width: 100%">
    <tr>
        <td style="width: 74px">
            <asp:Label ID="Label1" runat="server" Text="Notice 1 :"></asp:Label>
            <br />
        </td>
        <td style="width: 247px">
            <asp:TextBox ID="TextBox1" runat="server" Width="233px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 74px">
            <asp:Label ID="Label2" runat="server" Text="Notice 2 :"></asp:Label>
            <br />
        </td>
        <td style="width: 247px">
            <asp:TextBox ID="TextBox2" runat="server" Width="224px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" />
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 74px">
            <asp:Label ID="Label3" runat="server" Text="Notice 3 :"></asp:Label>
            <br />
        </td>
        <td style="width: 247px">
            <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
