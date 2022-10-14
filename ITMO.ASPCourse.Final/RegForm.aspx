<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegForm.aspx.cs" Inherits="RegForm" MasterPageFile="~/MasterPage.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
            <div>
            <h2>New student</h2>
            </div>
            <div> 
                <label>Enter Student Name:</label>
                <asp:TextBox ID="name" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Fill name" ForeColor="#CC3300">Not empty</asp:RequiredFieldValidator>
            </div> 
            <div> 
                <label>Enter Subject:</label>
                <asp:TextBox ID="subject" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="subject" ErrorMessage="Fill subject" ForeColor="#CC3300">Not empty</asp:RequiredFieldValidator>
            </div>
            <div> 
                <label>Enter Result:</label>
                <asp:TextBox ID="result" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="result" ErrorMessage="Fill result" ForeColor="#CC3300">Not empty</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="result" ErrorMessage="Result range 1-10" ValidationExpression="1-10"></asp:RegularExpressionValidator>
            </div> 
            <div>
            <button type="submit">Add</button>
            </div>
    </div>
</asp:Content>


