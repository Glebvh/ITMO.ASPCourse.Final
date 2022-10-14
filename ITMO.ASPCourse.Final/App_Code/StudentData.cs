using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



public class StudentData
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Subject { get; set; }
    public int Result { get; set; }

    public StudentData()
    {
    }
    public StudentData(string name, string subject, int result) 
    { 
        Name = name;
        Subject = subject;
        Result = result;
    }
    public StudentData(string name)
    {
        Name = name;
    }
}