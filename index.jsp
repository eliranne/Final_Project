<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose which days you want to be on vacation:</h3>
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
    <input type="submit" value="Continue">
  </form>
 
  <%
  String[] days = request.getParameterValues("day");
  String first_name = request.getParameter("first_name");
  String last_name = request.getParameter("last_name");
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
  <li><%= first_name %></li>
  <li><%= last_name %></li>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
  
</body>
</html>