<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HW6WebForm.aspx.vb" Inherits="Homework6.HW6WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homework 6</title>
    <link href="CSS%20HW6/StyleSheetHW6.css" rel="stylesheet" />
</head>
<body>
    <h1>A Demo of Wizard Server Control</h1>
    <form id="form1" runat="server">
        <div>
        <br />
            <%--First page, user name and address--%>
        <asp:Wizard ID="Wizard1" runat="server" Height="176px" ActiveStepIndex="0" Width="604px">
            <WizardSteps>
                <asp:WizardStep runat="server" title="User Information">
                    <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Address: "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </asp:WizardStep>

                <%--second page, credit card, card number, expiration date--%>
                <asp:WizardStep runat="server" title="Payment Information">
                    <asp:Label ID="Label3" runat="server" Text="Card Type: "></asp:Label>
                    <asp:DropDownList ID="CardDropDownList" runat="server">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>AmEX</asp:ListItem>
                        <asp:ListItem>Discovery</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Card Number: "></asp:Label>
                    <asp:TextBox ID="CardNumberTextBox" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Expiration Date: "></asp:Label>
                    <asp:Calendar ID="ExpirationCalendar" runat="server"></asp:Calendar>
                </asp:WizardStep>

                <%--summary page--%>
                <asp:WizardStep runat="server" StepType="Complete" Title="Done">
                    <h3>Summary of Input</h3>   
                    User Name: 
                    <asp:Label ID="FinalName" runat="server" Text="NameLabel"></asp:Label>
                    <br />
                    Credit Card Type: 
                    <asp:Label ID="FinalCard" runat="server" Text="CardLabel"></asp:Label>
                    <br />
                    Expiration Date:
                    <asp:Label ID="FinalExpDate" runat="server" Text="ExpDateLabel"></asp:Label>
                    <br />
                    will be used for payment.
                </asp:WizardStep> 
            </WizardSteps>
        </asp:Wizard>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
