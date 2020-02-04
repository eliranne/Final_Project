<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
<br>
<br>
  <h2>Choose which days you want to be on vacation:</h3>
  <form method="get">
    <input type="checkbox" name="day" value="Sunday">Sunday
    <input type="checkbox" name="day" value="Monday">Monday
    <input type="checkbox" name="day" value="Tuesday">Tuesday
    <input type="checkbox" name="day" value="Wednesday">Wednesday
    <input type="checkbox" name="day" value="Thursday">Thursday
    <input type="checkbox" name="day" value="Friday">Friday

  
  <h3>Enter your first name:</h3>
    <input type="text" name="first_name" />	
	
  <h3>Enter your last name:</h3>
    <input type="text" name="last_name" />	
  <h3>Enter your age:</h3>
   <input type="text" name="age" />
   <br>
   <br>
   <br>
    <input type="submit" value="Send request">
  </form>
 
  <%
  String[] days = request.getParameterValues("day");
  String first_name = request.getParameter("first_name");
  String last_name = request.getParameter("last_name");
  String age = request.getParameter("age");
  if (days != null) {
  %>
    <h3>You have selected day(s):</h3>
    <ul>
  <%
      for (int i = 0; i < days.length; ++i) {
  %>
        <li><%= days[i] %></li>
  <%
      }
  %>
  <h3>Your deatails:</h3>
  <li><%= "First name: " %><%= first_name %></li>
  <li><%= "Last name: " %><%= last_name %></li>
  <li><%= "Age: " %><%= age %></li>
  
  <h3>Your request send! Thanks</h3>
    </ul>
    <a  href="<%= request.getRequestURI() %>" >Click here for send new request</a>
  <%
  }
  %>
  


		<div>
		<br><h3 style="text-align:center;"><u>Created by:</u></h3>
		<h4 style="text-align:center;"> <%="Eliran Neeman" %></h4>
		<h4 style="text-align:center;"> <%="Noam Keisy" %></h4>
		<h4 style="text-align:center;"> <%="9/2/2020 grate 100" %></h4>

		<h4></h4>
		</div>

  
</body>
</html>