
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign03._Default" %>
<%--Author: Sushmita Nandalan
Student no: 300923159
Date: 8 December 2017--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">

    <div class="jumbotron">
        <h1>Barden College</h1>
        <h1><br />
        <%--image source for banner: www.graphicsprings.com--%>
        <a href="#"><img src="Images/banner.png" alt="College logo"></a></h1>
        <p class="lead">Barden College is one of the best colleges in the GTA, leading in student and employer satisfaction. Barden's graduate satisfaction rate is 88.5%, the highest in the country. We unleash innovative and entrepreneurial thinking by theory, practical learning, stat-of-the-art labs and creative spaces. </p>        
    </div>
    <div class="jumbotron">
    <h3>List Of Students</h3>
        <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StudentID" AllowSorting="True">
        <Columns>
            <asp:HyperLinkField DataTextField="StudentID" HeaderText="Student ID" Visible="true" DataNavigateUrlFields="StudentID"
                DataNavigateUrlFormatString="Student.aspx?StudentID={0}" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="FirstMidName" HeaderText="First Name" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" />
        </Columns>
    </asp:GridView>
        <br />
        <p><%--<a href="http://www.asp.net"--%> class="btn btn-primary btn-lg">Add Student &raquo;<%--</a>--%></p>
        </div>

    
</asp:Content>
