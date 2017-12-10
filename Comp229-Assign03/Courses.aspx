<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Comp229_Assign03.About" %>
<%--Author: Sushmita Nandalan
Student no: 300923159
Date: 8 December 2017--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <h3>List of students enrolled in courses.</h3>
        <asp:GridView ID="coursesGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CourseID" AllowSorting="True" Height="344px" Width="911px">
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
