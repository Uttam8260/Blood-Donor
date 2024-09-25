<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Interface - Blood Donation Management System</title>
    <%@include file="all_css_js.jsp"%>
</head>
<body>
    <header>
        <%@include file="navbar.jsp" %>
    </header>

    <main>
        <section class="section">
            <div class="container">
                <h2 class="section-title">Find Blood Donors</h2>
                <div class="form-container">
                    <form action="searchResult.jsp">
                        <div class="form-group">
                            <label for="blood-group">Blood Group:</label>
                            <select id="blood-group" name="blood-group" required>
                                <option value="">Select Blood Group</option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                            </select>
                        </div>
                        <button type="submit" class="form-submit">Search Donors</button>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Blood Donation Management System. All rights reserved.</p>
    </footer>
</body>
</html>