<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="StudentManagement.aspx.cs" Inherits="Layout3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .auto-style9 {
            width: 232px;
            text-align: right;
            height: 26px;
            font-family: Calibri;
        }
        .auto-style18 {
            height: 18px;
            width: 223px;
        }
        .auto-style19 {
            height: 26px;
            width: 223px;
        }
        .auto-style20 {
            width: 223px;
        }
    .auto-style21 {
        width: 232px;
        text-align: right;
        height: 26px;
        font-family: Calibri;
        font-size: medium;
    }
    .auto-style26 {
        color: #333333;
        background-color: #FFFFFF;
            font-size: large;
        }
        .auto-style28 {
            width: 377px;
            text-align: right;
            height: 26px;
            font-family: Calibri;
        }
        .auto-style29 {
            width: 377px;
        }
        .auto-style30 {
            height: 26px;
            width: 377px;
        }
        .auto-style31 {
            color: #333333;
        }
        .auto-style32 {
            width: 232px;
            text-align: right;
            height: 26px;
            font-family: Calibri;
            color: #333333;
            font-size: large;
        }
        .auto-style33 {
            color: #333333;
            font-size: large;
        }
    </style>&nbsp;&nbsp;
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Studdent Data Insert Here :" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" style="text-decoration: underline"></asp:Label>
    </h3>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <table style="width: 98%; margin-left: 10px; background-color: #FFFFFF; height: 486px;">
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Roll Number:</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="rollTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong><span class="auto-style26">Name :</span></strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="nameTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Father&#39;s name:</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="fatherNameTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Mother&#39;s name:</strong></td>
            <td class="auto-style28">
            
                <asp:TextBox ID="motherNameTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">&nbsp;PreviousResult:</strong></td>
            <td class="auto-style28">
                <br />
                <asp:TextBox ID="resultTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style19">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">&nbsp;AttendanceYear:</strong></td>
            <td class="auto-style30">
                <br />
                <asp:DropDownList ID="yearDropdown" runat="server" Height="29px" Width="183px">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
            <td class="auto-style19">
                </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong>Class :</strong></td>
            <td class="auto-style30">
            
                <asp:DropDownList ID="classDropdown" runat="server" Height="29px" Width="183px">
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
                <br />
               
            </td>
            <td class="auto-style19">
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong><span class="auto-style33">Department</span></strong><span class="auto-style33"> :</span></td>
            <td class="auto-style29">
                <br />
                <asp:DropDownList ID="departmentDropdown" runat="server" Height="25px" Width="183px">
                    <asp:ListItem>Null</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
            <td class="auto-style18">
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Section :</strong></td>
            <td class="auto-style29">
                <asp:DropDownList ID="SectionDropDownList" runat="server" Height="22px" Width="184px">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>E</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                    <asp:ListItem>G</asp:ListItem>
                    <asp:ListItem>H</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>J</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style20">
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style9"></td>
            <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Height="54px" Width="124px" BackColor="#333399" ForeColor="White" />
            </td>
            <td class="auto-style19">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Total Student Database" Width="193px" BackColor="#6600CC" ForeColor="White" Height="38px" />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" class="auto-style21">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
