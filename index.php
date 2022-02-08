<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<head>

    <!-- Meta data -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page | Club Event Organizer</title>

    <!-- Styles -->
    <link rel="stylesheet" href="src/public/styles/styles.less">

</head>

<!-- Body -->
<body>
    
    <!-- Navbar -->
    <div class="navbar">
        <div class="dropdown">
            <!-- Dropdown logic -->
            <button onclick="myFunction()" class="drop-btn">
                <img class="drop-btn" id="menuIcon" src="https://img.icons8.com/ios-filled/50/000000/menu--v1.png"/>
            </button>
            <div id="myDropdown" class="dropdown-content">
                <a href="#yo">Profile</a>
                <a href="#yo">Settings</a>
                <a href="#contact">Switch Accounts</a>
                <a href="#contact">Logout</a>
            </div>
            <script src="/src/public/scripts/dropdown.js"></script>
        </div>
        <div class="navbar-right">
            <a href="/index.php">CEO</a>
        </div>
    </div>
    
    

</body>
</html>