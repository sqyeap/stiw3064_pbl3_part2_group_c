<%--
  Created by IntelliJ IDEA.
  User: Woon Zhun Ping
  Date: 17/1/2023
  Time: 3:16 pm
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script type="text/javascript" src="noti.js"></script>

<style><%@include file="noti.css"%></style>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
</head>
<body>

<jsp:useBean id = "Subject1" class="com.example.demo2.Subject"/>
<jsp:useBean id = "Subject2" class="com.example.demo2.Subject"/>
<jsp:useBean id = "Subject3" class="com.example.demo2.Subject"/>

<jsp:setProperty name = "Subject1" property = "subjectCode" value = "STIJ 2044"/>
<jsp:setProperty name = "Subject1" property = "dueTimeDay" value = "10"/>
<jsp:setProperty name = "Subject1" property = "dueTimeHour" value = "9"/>

<jsp:setProperty name = "Subject2" property = "subjectCode" value = "STIW 3064"/>
<jsp:setProperty name = "Subject2" property = "dueTimeDay" value = "8"/>
<jsp:setProperty name = "Subject2" property = "dueTimeHour" value = "7"/>

<jsp:setProperty name = "Subject3" property = "subjectCode" value = "STIX 3913"/>
<jsp:setProperty name = "Subject3" property = "dueTimeDay" value = "6"/>
<jsp:setProperty name = "Subject3" property = "dueTimeHour" value = "5"/>

<header style="background-color: black; color:white; padding: 20px 10px">
  <div>
    <div>
      <h1><span style="color: yellow">UUM </span> Online Learning</h1>

    </div>

    <div class = "buttonNoti">
      <div id="mySidebar" class="w3-sidebar w3-bar-block" style="display: none; color: black">
        <a id="subjectBar1" href="#" class="w3-bar-item w3-button" style="border-bottom: 1px solid black;">You have upcoming due assignment from <jsp:getProperty name = "Subject1" property = "subjectCode"/>
          <p >Left <jsp:getProperty name = "Subject1" property = "dueTimeDay"/> days <jsp:getProperty name = "Subject1" property = "dueTimeHour"/> hours</p>
        </a>
        <a id="subjectBar2" href="#" class="w3-bar-item w3-button" style="border-bottom: 1px solid black;">You have upcoming due assignment from <jsp:getProperty name = "Subject2" property = "subjectCode"/>
          <p >Left <jsp:getProperty name = "Subject2" property = "dueTimeDay"/> days <jsp:getProperty name = "Subject2" property = "dueTimeHour"/> hours</p>
        </a>
        <a id="subjectBar3" href="#" class="w3-bar-item w3-button" style="border-bottom: 1px solid black;">You have upcoming due assignment <jsp:getProperty name = "Subject3" property = "subjectCode"/>
          <p >Left <jsp:getProperty name = "Subject3" property = "dueTimeDay"/> days <jsp:getProperty name = "Subject3" property = "dueTimeHour"/> hours</p>
        </a>

      </div>
      <button class="btnNoti"><i class="fa fa-bell" style="font-size: 20px;" onclick="runMethod()"></i></button>
      <span class="badge", id="badge">3</span>
    </div>

  </div>
</header>


<h2>Submission Status</h2>
<hr>
<jsp:useBean id="status1" class="com.example.demo2.uumol">
  <jsp:setProperty name="status1" property="*" />
</jsp:useBean>

<table>
  <tr>
    <td>Submission Status </td>
    <td><jsp:getProperty name="status1" property="status2"/></td>
  </tr>
  <tr>
    <td>Grading Status </td>
    <td><jsp:getProperty name="status1" property="grading"/></td>
  </tr>
  <tr>
    <td>Due date </td>
    <td><jsp:getProperty name="status1" property="setduedate"/></td>
  </tr>
  <tr>
    <td>Time remaining </td>
    <td><jsp:getProperty name="status1" property="time"/></td>
  </tr>
  <tr>
    <td>Last modified </td>
    <td><jsp:getProperty name="status1" property="modified2"/></td>
  </tr>
</table>
</FORM>

<hr>
<p>Submission comments  &#8680;<jsp:getProperty name="status1" property="comments"/>
</p>

<button id="1" class="submit">
  <a href="mainpage.jsp"><span>Back to Main Menu</span></a>
</button>
<script>
  var newValue = localStorage.getItem("badgeNumber");
  localStorage.setItem("updatebadge",newValue)
  document.getElementById("badge").innerHTML = newValue;



</script>

</body>
</html>

