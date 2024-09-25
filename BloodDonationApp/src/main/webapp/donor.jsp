<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration - Blood Donation Management System</title>
    <%@include file="all_css_js.jsp"%>
</head>
<body>
    <header>
        <%@include file="navbar.jsp" %>
    </header>

    <main>
        <section class="section">
            <div class="container">
                <h2 class="section-title">Donor Registration</h2>
                <div class="form-container">
                    <form action="SaveDonor" method="post">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="age">Age:</label>
                            <input type="number" id="age" name="age" required min="18" max="65">
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone Number:</label>
                            <input type="tel" id="phone" name="phone" required>
                        </div>
                        <div class="form-group">
                            <label for="blood-group">Blood Group:</label>
                            <select id="blood-group" name="group" required>
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
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <textarea id="address" name="address" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label>Gender:</label>
                            <div>
                                <label><input type="radio" name="gender" value="male" required> Male</label>
                                <label><input type="radio" name="gender" value="female" required> Female</label>
                                <label><input type="radio" name="gender" value="other" required> Other</label>
                            </div>
                        </div>
                        <button type="submit" class="form-submit">Register as Donor</button>
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