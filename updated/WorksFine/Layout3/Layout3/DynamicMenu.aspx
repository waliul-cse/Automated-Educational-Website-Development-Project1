<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="DynamicMenu.aspx.cs" Inherits="Layout3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="width: 263px">
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0099CC" Text="Menu"></asp:Label>
                        <br />
                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" BorderWidth="10px" CellPadding="3" CellSpacing="15" CssClass="auto-style1" GridLines="Both" Width="120px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                            <AlternatingItemStyle BackColor="White" BorderStyle="Outset" />
                            <EditItemStyle BackColor="#CC33FF" BorderColor="#660033" BorderStyle="Groove" Font-Bold="True" Font-Size="XX-Large" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <ItemStyle ForeColor="#000066" />
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#006666" OnClick="LinkButton1_Click" Text='<%# Bind("CategoryName") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style5" style="position :relative">
                        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" Width="788px" CssClass="auto-style5" Height="363px">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("sName") %>'></asp:Label>
                                <br />
                                <asp:Image ID="image" runat="server" Height="150" ImageUrl='<%# Eval ("Image") %>' Width="150" />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next &gt;&gt;" />
                        <asp:Label ID="Label4" runat="server" Text="........"></asp:Label>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Previous &lt;&lt;" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 263px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
<br />
<br />
<br />
<br />
<br />
<br />
        </ContentTemplate>
</asp:UpdatePanel>
<p>
        <br />
    </p>
    <p>
    </p>
    
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
