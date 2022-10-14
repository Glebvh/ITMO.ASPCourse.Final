<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SummTable.aspx.cs" Inherits="SummTable" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
        <h2>Result summary</h2>  
        <div>
            <label>Enter Student Name for Summary:</label>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <div>
                <button type="submit">Get Summ</button>
            </div>
                <div class = "h2" style="height: 20px" >
            <% 
                if (IsPostBack)
                {
                    StudentData data = new StudentData(name.Text);

                    using (var context = new Context())
                    {
                        System.Nullable <int> summQuery =
                        (from sd in context.Students
                         where sd.Name == name.Text
                         select sd.Result)
                        .Sum();

                        if (summQuery != null)
                        {
                            string htmlString = String.Format("<tr><td>Result summary for {1} is {0} </td>", summQuery, name.Text);
                            Response.Write(htmlString);
                        }
                        else 
                        {
                            string htmlString = String.Format("<tr><td>Result summary for {0} is not find </td>", name.Text);
                            Response.Write(htmlString);
                        }
                    }
            
                }
               %>
             </div>
        </div>
        </div>
</asp:Content>
        
