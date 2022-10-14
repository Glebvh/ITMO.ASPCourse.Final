using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;


public class Context : DbContext
{
    public Context() : base("WebFinalDB")
    { }
    public DbSet<StudentData> Students { get; set; }
}