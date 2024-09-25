<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration - Blood Donation Management System</title>
    <%@include file="all_css_js.jsp"%>
</head>
<body>
    <header>
        <%@include file="navbar.jsp" %>
    </header>

    <main>
        <section class="section">
            <div class="container">
                <h2 class="section-title">User Registration</h2>
                <div class="form-container">
                    <form action="SaveUser" method="post" autocomplete="off">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" required autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" autocomplete="new-password">
                        </div>
                        <div class="form-group">
                            <label for="confirm-password">Confirm Password:</label>
                            <input type="password" id="confirm-password" name="confirm-password" required autocomplete="off">
                        </div>
                        <button type="submit" class="form-submit">Register as User</button>
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