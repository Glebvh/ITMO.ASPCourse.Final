<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Top" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebFinalDBConnectionString %>" 
                SelectCommand="select top 5 Name, Sum(result) as Result from [StudentDatas] where 
	                                                                            Name = Name 
	                                                                            group by Name
	                                                                            order by Result desc">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="1261px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" ReadOnly="True" />
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>


