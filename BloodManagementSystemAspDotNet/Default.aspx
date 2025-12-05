<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BloodManagementSystemAspDotNet.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home - Blood Management System</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #ff4d4d, #ff8080);
            min-height: 100vh;
            color: white;
        }

        .navbar {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .navbar-brand {
            font-weight: 700;
            font-size: 1.4rem;
            color: white !important;
        }

        .nav-link {
            color: white !important;
            font-weight: 500;
            transition: all 0.3s;
        }

        .nav-link:hover {
            color: #ffe6e6 !important;
            transform: scale(1.1);
        }

        .hero {
            text-align: center;
            padding: 100px 20px;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
        }

        .hero p {
            font-size: 1.3rem;
            margin-top: 10px;
        }

        .card {
            border: none;
            border-radius: 20px;
            background: white;
            color: #333;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
        }

        .card-icon {
            font-size: 3rem;
            color: #d90429;
            margin-bottom: 10px;
        }

        .footer {
            text-align: center;
            padding: 20px;
            background: rgba(255, 255, 255, 0.15);
            margin-top: 50px;
            color: white;
        }

        @media(max-width: 768px) {
            .hero h1 {
                font-size: 2rem;
            }
            .hero p {
                font-size: 1rem;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">🩸 Blood Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navMenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="AddDonor.aspx">Add Donor</a></li>
                    <li class="nav-item"><a class="nav-link" href="DonorList.aspx">Donor List</a></li>
                    <li class="nav-item"><a class="nav-link" href="SearchDonor.aspx">Search Donor</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Welcome to the Blood Management System 🩸</h1>
        <p>Register donors, search blood groups, and save lives efficiently.</p>
    </section>

    <!-- Dashboard Cards -->
    <div class="container mt-4">
        <div class="row g-4 justify-content-center">
            <!-- Add Donor -->
            <div class="col-md-3">
                <div class="card text-center p-4">
                    <div class="card-icon">➕</div>
                    <h5>Add Donor</h5>
                    <p>Register new blood donors easily.</p>
                    <a href="AddDonor.aspx" class="btn btn-danger">Go</a>
                </div>
            </div>

            <!-- Donor List -->
            <div class="col-md-3">
                <div class="card text-center p-4">
                    <div class="card-icon">📋</div>
                    <h5>Donor List</h5>
                    <p>View and manage all registered donors.</p>
                    <a href="DonorList.aspx" class="btn btn-danger">Go</a>
                </div>
            </div>

            <!-- Search Donor -->
            <div class="col-md-3">
                <div class="card text-center p-4">
                    <div class="card-icon">🔍</div>
                    <h5>Search Donor</h5>
                    <p>Find donors by their blood group quickly.</p>
                    <a href="SearchDonor.aspx" class="btn btn-danger">Go</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        © 2025 Blood Management System | Designed by Basha 💻
    </div>
</body>
</html>
