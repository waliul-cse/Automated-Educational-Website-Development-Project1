<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="AddNotice.aspx.cs" Inherits="Layout3.Admin.AddNotice2" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table cellpadding="0" cellspacing="0" style="width: 99%; height: 572px;">
            <tr>
                <td style="width: 187px; text-align: center; height: 76px;">
                    <strong>
                    &nbsp;<span style="font-size: large">Category</span>:&nbsp; </strong>
                </td>
                <td style="width: 415px; height: 76px;">
                    <br />
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="280px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td style="height: 76px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px; text-align: center;" class="chzn-rtl">
                    <strong>Name</strong></td>
                <td style="height: 18px; width: 415px">
                 
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="281px"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 41px; text-align: center;" </td>
                    <strong>Add image</strong><td style="width: 415px; height: 41px">
                    
                 
                    
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="236px" />
                    <br />
                  
                    <br />
                </td>
                <td style="height: 41px">
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 187px; height: 19px; text-align: center;" class="chzn-rtl"><strong><span style="font-size: large">Description</span>: </strong></td>
                <td style="width: 415px; height: 19px;">
                    
                    
                       
                    
                <FTB:FreeTextBox ID="FreeTextBox1" runat="server" BreakMode="Paragraph" DownLevelMode="TextArea" EnableSsl="False">
                </FTB:FreeTextBox>

                    
                       
                    
                </td>
                <td style="height: 19px"></td>
            </tr>
            <tr>
                <td style="width: 187px" class="chzn-rtl"><strong>&nbsp;</strong></td>
                <td style="width: 415px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 415px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px;"></td>
                <td style="width: 415px; height: 18px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#666666" Height="52px" Text="Save" Width="130px" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#666666" Height="52px" Text="Cancel" Width="121px" OnClick="Button1_Click" style="margin-left: 42px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px;"></td>
                <td style="width: 415px; height: 18px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>

                </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 415px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 415px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
