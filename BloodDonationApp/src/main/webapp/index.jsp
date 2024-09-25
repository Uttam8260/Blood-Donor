<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation Management System</title>
    <%@include file="all_css_js.jsp"%>
</head>
<body>
    <header>
         <%@include file="navbar.jsp" %>
    </header>

    <main>
        <section class="hero">
            <h1 class="pulse">Save Lives</h1>
            <p>Donate Blood Today</p>
            <a href="donor.jsp" class="btn">Become a Donor</a>
        </section>

        <section class="section">
            <div class="container">
                <h2 class="section-title">Why Donate Blood?</h2>
                <div class="card-container">
                    <div class="card float">
                        <h3>Save Lives</h3>
                        <p>Your donation can save up to three lives.</p>
                    </div>
                    <div class="card float">
                        <h3>Always Needed</h3>
                        <p>Every two seconds, someone needs blood.</p>
                    </div>
                    <div class="card float">
                        <h3>Quick & Easy</h3>
                        <p>The donation process takes only about an hour.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <h2 class="section-title">Blood Group Information</h2>
                <div class="card-container">
                    <div class="card float">
                        <h3>Universal Donor</h3>
                        <p>O- is the universal donor and can give to all blood types.</p>
                    </div>
                    <div class="card float">
                        <h3>Universal Recipient</h3>
                        <p>AB+ is the universal recipient and can receive from all blood types.</p>
                    </div>
                    <div class="card float">
                        <h3>Most Common</h3>
                        <p>O+ is the most common blood type, found in 38% of the population.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Blood Donation Management System. All rights reserved.</p>
    </footer>
</body>
</html>