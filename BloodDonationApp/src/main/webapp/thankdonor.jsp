<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You - Blood Donation Management System</title>
    <%@include file="all_css_js.jsp"%>
</head>
<body>
    <header>
        <%@include file="navbar.jsp" %>
    </header>

    <main>
        <section class="section">
            <div class="container">
                <h2 class="section-title">Thank You for Registering!</h2>
                <div class="card-container">
                    <div class="card float">
                        <h3>Your Commitment Matters</h3>
                        <p>Thank you for registering as a donor. Your commitment to saving lives through blood donation is truly appreciated.</p>
                    </div>
                    <div class="card float">
                        <h3>What's Next?</h3>
                        <p>We'll review your information and contact you soon with details about upcoming blood drives in your area.</p>
                    </div>
                    <div class="card float">
                        <h3>Stay Healthy</h3>
                        <p>Remember to stay healthy and hydrated for your next donation. Your contribution can save up to three lives!</p>
                    </div>
                </div>
                <div style="text-align: center; margin-top: 2rem;">
                    <a href="index.jsp" class="btn">Return to Home</a>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Blood Donation Management System. All rights reserved.</p>
    </footer>
</body>
</html>