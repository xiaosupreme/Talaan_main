<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/views/css/index.css" type="text/css">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
			integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
			crossorigin="anonymous"></script>
			<script src="https://kit.fontawesome.com/9211c1028d.js" crossorigin="anonymous"></script>
		<title>Customers</title>
		<link rel="shortcut icon" href="/views/favicon.ico" type="image/x-icon" />
	
	</head>
<body>
	<header>
        <div class="leftnav">
            <a href="/adminhome"><img src="${pageContext.request.contextPath}/views/imgs/arctic.png"></a>
            <a href="/admin/genres"><i class="fa-solid fa-bars-staggered"></i></a>
            <a href="/admin/books"><i class="fa-solid fa-book"></i></a>
			<a href="/admin/customers"><i class="fa-solid fa-person-circle-question"></i></i></a>
        </div>
        <div class="rightnav">
            <a sec:authorize="isAuthenticated()" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
        </div>
    </header>
	<section class="home" id="home">
        <div class="content content-table">
            <div class="row">
                <div class="title col-12">
                    <h3>List of Customers</h3>
                </div>
            </div>
            <div class="list table-responsive">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">UserId</th>
						<th scope="col">Customer Name</th>
						<th scope="col">Email</th>
						<th scope="col">Password</th>
                      </tr>
                    </thead>
                    <tbody>
						<%
						try {
							String url = "jdbc:mysql://localhost:3306/springproject";
							Class.forName("com.mysql.cj.jdbc.Driver");
							Connection con = DriverManager.getConnection(url, "root", "");
							Statement stmt = con.createStatement();
							Statement stmt2 = con.createStatement();
							ResultSet rs = stmt.executeQuery("select * from users");
						%>
						<%
						while (rs.next()) {
						%>
                      	<tr>
							<td class="align-middle">
								<%= rs.getInt(1) %>
							</td>
							<td class="align-middle">
								<%= rs.getString(2) %>
							</td>
							<td class="align-middle">
								<%= rs.getString(5) %>
								</td>
							<td class="align-middle">
								<%= rs.getString(3) %>
							</td>
						</tr>
						<%
						}
						%>
						<%
						} catch (Exception ex) {
							out.println("Exception Occurred:: " + ex.getMessage());
						}
						%>
                    </tbody>
                  </table>
            </div>
        </div>
    </section>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>