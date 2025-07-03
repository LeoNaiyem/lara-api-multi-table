<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hospital Management Dashboard</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
        }

        .sidebar {
            height: 100vh;
            background-color: #343a40;
            color: #fff;
        }

        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
            display: block;
            padding: 12px 20px;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }

        .sidebar .active {
            background-color: #0d6efd;
            color: #fff;
        }

        .content {
            padding: 20px;
        }

        .navbar-brand {
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar p-3">
            <h4 class="text-white mb-4">🏥 HMS</h4>
            <a href="#" class="active"><i class="fas fa-tachometer-alt me-2"></i> Dashboard</a>
            <a href="#"><i class="fas fa-user-injured me-2"></i> Patients</a>
            <a href="#"><i class="fas fa-file-invoice-dollar me-2"></i> Invoices</a>
            <a href="#"><i class="fas fa-calendar-check me-2"></i> Appointments</a>
            <a href="#"><i class="fas fa-user-md me-2"></i> Doctors</a>
            <a href="#"><i class="fas fa-capsules me-2"></i> Inventory</a>
            <a href="#"><i class="fas fa-chart-line me-2"></i> Reports</a>
            <a href="#"><i class="fas fa-cog me-2"></i> Settings</a>
        </div>

        <!-- Main Content -->
        <div class="flex-grow-1">
            <!-- Top Navbar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light px-4">
                <a class="navbar-brand" href="#">Hospital Dashboard</a>
                <div class="ms-auto">
                    <span class="me-3">Welcome, Admin</span>
                    <a href="#" class="btn btn-outline-danger btn-sm"><i class="fas fa-sign-out-alt"></i> Logout</a>
                </div>
            </nav>

            <!-- Page Content -->
            @yield('content')
        </div>
    </div>

    <!-- Bootstrap JS (Optional for interactivity) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>