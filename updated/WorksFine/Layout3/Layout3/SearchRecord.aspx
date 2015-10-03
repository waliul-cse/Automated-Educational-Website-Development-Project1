<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="SearchRecord.aspx.cs" Inherits="Layout3.SearchRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <table style="width: 100%">
        <tr>
            <td style="width: 139px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 107px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 18px; width: 107px"></td>
            <td style="height: 18px">
    <asp:Label ID="Label2" runat="server" Text="Class :" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="150px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Department :" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="136px">
        <asp:ListItem>Science</asp:ListItem>
        <asp:ListItem>Arts</asp:ListItem>
        <asp:ListItem>Commerce</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Year :" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="135px">
        <asp:ListItem>2015</asp:ListItem>
        <asp:ListItem>2016</asp:ListItem>
        <asp:ListItem>2017</asp:ListItem>
        <asp:ListItem>2018</asp:ListItem>
        <asp:ListItem>2019</asp:ListItem>
        <asp:ListItem>2020</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td style="height: 18px"></td>
        </tr>
        <tr>
            <td style="width: 107px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; height: 18px"></td>
            <td style="height: 18px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 413px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button4" runat="server" BackColor="#666666" Height="28px" Text="Search" Width="84px" OnClick="Button4_Click" />
                        </td>
                        <td style="width: 227px">
                            <asp:Button ID="Button5" runat="server" BackColor="#666666" Text="Search" Width="102px" OnClick="Button5_Click" />
                        </td>
                        <td style="width: 95px">&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <asp:Button ID="Button6" runat="server" BackColor="#666666" Height="26px" Text="Search" Width="104px" OnClick="Button6_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 107px; height: 18px;"></td>
            
        </tr>
        <tr>
            <td style="width: 107px">&nbsp;</td>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 114px; height: 523px;"></td>
                        <td style="height: 523px">
         

                             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" BorderColor="Black" CellPadding="3" BackColor="White" BorderStyle="None" BorderWidth="1px" Width="654px">
        <Columns>
           
            <asp:BoundField DataField="rollNumber" HeaderText="RollNumber" SortExpression="rollNumber" ReadOnly="true" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="result" HeaderText="Result" SortExpression="result" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" BorderColor="#CC6600" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllStudent" TypeName="Layout3.ShowStudentDatabaseLayer" UpdateMethod="UpdateStudent" DeleteMethod="DeleteStudent">
        <DeleteParameters>
            <asp:Parameter Name="rollNumber" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="rollNumber" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="result" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="653px" AllowPaging="True">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

                             <br />
                             <br />

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 114px; height: 18px;"></td>
                        <td style="height: 18px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 114px; height: 18px;"></td>
                        <td style="height: 18px">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 114px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
