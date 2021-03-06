﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin3_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();       
        string sql = "select [工号],[教师姓名],[提交时间],[状态] from [青年教师指导表]";
        mDB.ExecuteSQL(sql);
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["TeacherID6"] = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
        Session["TeacherName6"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text.ToString();
        Response.Redirect("admin3-1-1-1.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[教师姓名],[提交时间],[状态] from [授导学生表] where [工号]+[教师姓名] like'%" + TextBox1.Text + "%'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[教师姓名],[提交时间],[状态] ";
        sql += "from [授导学生表] where [工号]+[教师姓名] like'%" + TextBox1.Text + "%'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
}