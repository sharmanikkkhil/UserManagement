<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<style>
    body {
        background: linear-gradient(to right, #1e3c72, #2a5298);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
        background: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        width: 320px;
        animation: fadeIn 1s ease-in-out;
    }
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    fieldset {
        border: none;
    }
    legend {
        font-size: 28px;
        font-weight: bold;
        color: #2a5298;
        margin: 10px 0px 10px 0px;
        text-align: center;
    }
    label {
        display: block;
        margin-top: 15px;
        font-weight: bold;
        color: #333;
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-top: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }
    input[type="submit"] {
        width:100px;
        padding: 12px;
        background: #2a5298;
        border: none;
        border-radius: 6px;
        color: white;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s, transform 0.1s;
        margin: 20px 96px 0px 96px;
    }
    input[type="submit"]:hover {
        background: #1e3c72;
        transform: scale(1.05);
    }
    
    .submit{
    display: block;
    margin-block-start: 0em;
    margin-block-end: 0em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    unicode-bidi: isolate;
    }
</style>
</head>
<body>
<form action="login" method="post">
    <fieldset>
        <legend>Admin Login</legend>
        <p>
            <label>Username</label>
            <input type="text" name="user" required/>
        </p>
        <p>
            <label>Password</label>
            <input type="password" name="password" required/>
        </p>
        <p class='submit'>
            <input type="submit" value="Login">
        </p>
    </fieldset>
</form>
</body>
</html>
