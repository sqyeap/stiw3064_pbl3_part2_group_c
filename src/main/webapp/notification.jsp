<%--
  Created by IntelliJ IDEA.
  User: Woon Zhun Ping
  Date: 3/1/2023
  Time: 10:34 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>UUM ONLINE LEARNING</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <style>

    .button{
      text-decoration: none;
      float: right;
      position: relative;
      display: inline-block;
      border-radius: 2px;
      top: -60px;
      right: 20px;

    }

    .button:hover {
      background: red;
    }


    .button .badge {
      position: absolute;
      top: -10px;
      right: -10px;
      padding: 5px 10px;
      border-radius: 50%;
      background: red;
      color: white;
    }


    .submit{
      margin: 10px;
      text-decoration: none;
      display: inline-block;
      border-radius: 2px;


    }

    .submit:hover {
      background: dodgerblue;
    }



    .btn {
      background-color: black; /* Blue background */
      border: none; /* Remove borders */
      color: grey; /* White text */
      padding: 12px 16px; /* Some padding */
      font-size: 16px; /* Set a font size */
      cursor: pointer; /* Mouse pointer on hover */
    }

    /* Darker background on mouse-over */
    .btn:hover {
      color : red;
    }

    .w3-sidebar{
      color: black;
      position: relative;
      float: right;
      top: 50px;
      right: 70px;


    }

    .w3-bar-item{
      font-size:  14px;
    }

    .w3-sidebar p {
      font-size: 10px;
    }


  </style>
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

  <div class = "button">
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
    <button class="btn"><i class="fa fa-bell" style="font-size: 20px;" onclick="runMethod()"></i></button>
    <span class="badge", id="badge">3</span>
  </div>

    </div>
</header>
<div>
  <h2><jsp:getProperty name = "Subject1" property = "subjectCode"/> Assignment 1</h2>
<button id="1" class="submit" onclick="setStatus(1)">
  <span>Subtmit</span>
</button>
</div>

<div>
  <h2><jsp:getProperty name = "Subject2" property = "subjectCode"/> Assignment 1</h2>
  <button id="2" class="submit" onclick="setStatus(2)">
    <span>Subtmit</span>
  </button>
</div>

<div>
  <h2><jsp:getProperty name = "Subject3" property = "subjectCode"/> Assignment 1</h2>
  <button id="3" class="submit" onclick="setStatus(3)" >
    <span>Subtmit</span>
  </button>
</div>

<%--<a href="#" class="notification">--%>

<%--  <span>Inbox</span>--%>
<%--  <span class="badge">3</span>--%>
<%--</a>--%>

<script>
  var value =1;

  function runMethod(){
  if(value==1){
    w3_open();

  } else w3_close()
  }

function w3_close() {
  value = 1;
document.getElementById("mySidebar").style.display = "none";
}

function w3_open() {
  value = 2;
  document.getElementById("mySidebar").style.width = "30%";
  document.getElementById("mySidebar").style.display = "block";
}
  let number = 3;
function setStatus(button){
    var x = button;

    switch (x) {
      case 1:
        document.getElementById("subjectBar1").style.display = "none";
        number = number - 1;
        document.getElementById("badge").innerHTML = number;
        document.getElementById("1").disabled = true;
        break;
      case 2:
        document.getElementById("subjectBar2").style.display = "none";
        number = number - 1;
        document.getElementById("badge").innerHTML = number;
        document.getElementById("2").disabled = true;
        break;
      case 3:
        document.getElementById("subjectBar3").style.display = "none";
        number = number - 1;
        document.getElementById("badge").innerHTML = number;
        document.getElementById("3").disabled = true;
        break;

    }

}

</script>
<br/>

</body>
</html>



