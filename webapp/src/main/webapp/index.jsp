<!DOCTYPE html>
<html>
<head>
    <title>WeLCOME To SUDARSHAN GROUP OF INSTITUTIONS</title>
    <style>
        body {
            background-color: #eaeaea; /* Updated background color */
            color: red;
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
            font-family: Arial, sans-serif; /* Set a default font */
        }
        h1 {
            color: blue;
            text-align: center;
        }
        .container {
            background-image: url('https://upload.wikimedia.org/wikipedia/commons/a/a3/Thiruvananthapuram_Infosys_Building.jpg'); /* Image of Maitrivanam building */
            background-size: cover; /* Cover the entire container with the background image */
            background-position: center; /* Center the background image */
            padding: 20px;
            border-radius: 10px; /* Rounded corners for the container */
            margin: 50px auto; /* Center the container horizontally */
            width: 400px; /* Set a fixed width for the container */
        }
        .container input[type="text"],
        .container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
        .container button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: darkblue; /* Darken the background color on hover */
        }
        .container label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Welcome To SUDARSHAN GROUP OF INSTITUTIONS</h1>
    <div class="container">
        <label for="uname"><b>Username:</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required><br><br>
        <label for="psw"><b>Password:</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required><br><br>
        <button type="submit">Login</button>
    </div>
</body>
</html>
