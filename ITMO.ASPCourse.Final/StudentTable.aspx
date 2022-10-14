<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentTable.aspx.cs" Inherits="StudentTable" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource2" Height="65px" Width="1264px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" ReadOnly="True" />
                    <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" ReadOnly="True" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Context" EntityTypeName="" TableName="Students" Select="new (Name, Subject, Result)">
            </asp:LinqDataSource>
        </div>
</asp:Content>

