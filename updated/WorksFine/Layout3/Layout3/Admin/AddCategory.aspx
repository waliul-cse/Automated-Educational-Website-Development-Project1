<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Layout3.Admin.AddMenuItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
     <p>
         <table style="width: 100%">
             <tr>
                 <td style="width: 156px">&nbsp;</td>
                 <td style="width: 302px">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="chzn-rtl" style="width: 156px; height: 52px"><strong>Add MenuName</strong></td>
                 <td style="height: 52px; width: 302px">
                   
                     <asp:TextBox ID="TextBox1" runat="server" Height="29px" OnTextChanged="TextBox1_TextChanged" Width="262px"></asp:TextBox>
                     <br />
                 </td>
                 <td style="height: 52px">
                     <asp:Button ID="Button1" runat="server" BackColor="#666666" ForeColor="White" Height="34px" Text="Save" Width="104px" OnClick="Button1_Click" />
                 </td>
             </tr>
             <tr>
                 <td style="width: 156px; height: 18px"></td>
                 <td style="height: 18px; width: 302px">&nbsp;</td>
                 <td style="height: 18px">&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 156px; height: 18px"></td>
                 <td style="height: 18px; width: 302px">
                     <asp:Label ID="Label1" runat="server"></asp:Label>
                 </td>
                 <td style="height: 18px"></td>
             </tr>
             <tr>
                 <td style="width: 156px">&nbsp;</td>
                 <td style="width: 302px">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
    <br />
</p>
<p>
    &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
