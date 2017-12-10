<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Comp229_Assign03.Contact" %>
<%--Author: Sushmita Nandalan
Student no: 300923159
Date: 8 December 2017--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <div class="jumbotron">
        <p>This is the Student Page</p>
    <h4>List Of Students</h4>
        <asp:GridView ID="studentGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StudentID" AllowSorting="True">
        <Columns>
            <asp:HyperLinkField DataTextField="StudentID" HeaderText="Student ID" Visible="true" DataNavigateUrlFields="StudentID"
                DataNavigateUrlFormatString="Student.aspx?StudentID={0}" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="FirstMidName" HeaderText="First Name" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" />
            <asp:CommandField HeaderText="Delete" DeleteText="Delete" 
                ShowDeleteButton="true" ButtonType="Link" />

        </Columns>
    </asp:GridView>
        </div>
    <div class="jumbotron">
    <h4>List Of Courses</h4>
        <asp:GridView ID="coursesGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CourseID" AllowSorting="True">
        <Columns>
            <asp:HyperLinkField DataTextField="CourseID" HeaderText="Course ID" Visible="true" DataNavigateUrlFields="CourseID"
                DataNavigateUrlFormatString="Courses.aspx?CourseID={0}" />
             <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" />
            <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" />
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
