<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Comp229_Assign03.About" %>
<%--Author: Sushmita Nandalan
Student no: 300923159
Date: 8 December 2017--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <h3>List of students enrolled in courses.</h3>
        <asp:GridView ID="EnrollmentGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="EnrollmentID" AllowSorting="True">
        <Columns>            
            <asp:BoundField DataField="EnrollmentID" HeaderText="Enrollment ID" />
            <asp:BoundField DataField="CourseID" HeaderText="Course ID" />
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" />
             <asp:CommandField HeaderText="Delete" DeleteText="Delete" 
                ShowDeleteButton="true" ButtonType="Link" />
        </Columns>
    </asp:GridView>
   </div>
</asp:Content>
