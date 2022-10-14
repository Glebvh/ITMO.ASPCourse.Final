using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class RegForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            Page.Validate(); 
            if (!Page.IsValid) 
            return;
            StudentData data = new StudentData(name.Text, subject.Text, Convert.ToInt32(result.Text));
            
            using (var context = new Context())
            {  
                context.Students.Add(data);
                context.SaveChanges();
            }

        }

    }
}