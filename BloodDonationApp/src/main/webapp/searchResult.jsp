<!DOCTYPE html>
<%@page import="com.Donorr.Donors"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.query.Query"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results - Blood Donation Management System</title>
    <%@include file="all_css_js.jsp"%>
</head>
<body>
    <header>
        <%@include file="navbar.jsp" %>
    </header>

    <main>
        <section class="section">
            <div class="container">
                <h2 class="section-title">Donor Search Results</h2>
                <div class="card-container"> 
                
                <%
                
                String g=request.getParameter("blood-group");
                
                Session s=new Configuration().configure().buildSessionFactory().openSession();
                @SuppressWarnings("unchecked")
                List<Donors> l=s.createQuery("from Donors where bgroup=:x")
                                .setParameter("x", g)
                                .list();
                for (Donors donor : l) {
                %>
                    <div class="card float">
                        <h3><%=donor.getName()%></h3>
                        <p><strong>Blood Group:</strong><%=donor.getGroup()%></p>
                        <p><strong>Age:</strong><%=donor.getAge()%></p>
                        <p><strong>Gender:</strong><%=donor.getGender()%></p>
                        <p><strong>Location:</strong><%=donor.getAddress()%></p>
                        <p><strong>Contact:</strong><%=donor.getNumber()%></p>
                    </div>
                 <%
                  
                  }
                 %>
                </div>
                <div style="text-align: center; margin-top: 2rem;">
                    <a href="userdashboard.jsp" class="btn">New Search</a>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Blood Donation Management System. All rights reserved.</p>
    </footer>
</body>
</html>