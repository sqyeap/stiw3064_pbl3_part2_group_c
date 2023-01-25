<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="stylesheet.css"%></style>
<style><%@include file="noti.css"%></style>

<script type="text/javascript" src="noti.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="noti.js"></script>


<html>
<head>
  <title>UUM OL (G3) - Main Page</title>
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
      <a href="loginpage.jsp" type="submit" class="button">Logout</a>
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



<div>
  <h2><jsp:getProperty name = "Subject1" property = "subjectCode"/> Assignment 1</h2>
  <button id="1" class="submit">
    <a href="oljsp.jsp"><span>Go to Submission Status</span></a>
  </button>
</div>


<div style="display: flex; justify-content: center">
  <p>
    <%= "Successfully logged in to UUM Online Learning" %>
  </p>
</div>
<div style="display: flex; justify-content: center">
  <p>
    <%= "Main Page of UUM Online Learning" %>
  </p>
</div>
<jsp:useBean id = "quotes" class = "com.example.demo2.Quote">
  <jsp:setProperty name = "quotes" property = "apiKey" value = "https://zenquotes.io/api/random"/>
  <jsp:setProperty name = "quotes" property = "quoteOTD" value = "quotes"/>
</jsp:useBean>
<button id="quoteBtn" style="display: none">Open Modal</button>
<div id="quoteWindow" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <h2><%= "Quote of the Day" %></h2>
    <p>
      <span id="quote"><%= "You can suffer the pain of change or suffer remaining the way you are." %></span>
      <%--                <jsp:getProperty name = "quotes" property = "quoteOTD"/>--%>
    </p>
  </div>
</div>
<script>



  if(localStorage.getItem("checkSubmit") == 1){
    document.getElementById("1").innerHTML = "Submitted";
    document.getElementById("1").disabled = true;
    document.getElementById("badge").innerHTML = localStorage.getItem("badgeNumber");
    document.getElementById("subjectBar1").style.display = "none";

  }

  var modal = document.getElementById("quoteWindow");
  var btn = document.getElementById("quoteBtn");
  var span = document.getElementsByClassName("close")[0];

  btn.onclick = function() {
    modal.style.display = "block";
  }
  span.onclick = function() {
    modal.style.display = "none";
  }
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
  const api_url = 'https://zenquotes.io/api/random';
  async function getQuote() {
    const response = await fetch(api_url);
    const data = await response.json();
    const {q, a} = data;
    document.getElementById("quote").textContent = q;
  }
  getQuote();


</script>
</body>
</html>
