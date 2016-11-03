<?php
//This page let display the list of personnal message of an user
include('config.php');
?>
<!DOCTYPE html PUBLIC >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="style.css" rel="stylesheet" title="Style" />
        <title>Personal Messages</title>
    </head>
    <body>
    	<div class="header">
        	<a href=""> <img src="images/logo.png" alt="" /></a>
	    </div>
        <div class="">
<?php
if(isset($_SESSION['username']))
{

echo "<script> alert('Youre inside')</script>";
}
else

{
?>
<h2>You must be logged to access this page:</h2>
<div class="">
	<form action="login.php" method="post">
		<label for="username">Username</label><input type="text" name="username" id="username" /><br />
		<label for="password">Password</label><input type="password" name="password" id="password" /><br />
        <label for="memorize">Remember</label><input type="checkbox" name="memorize" id="memorize" value="yes" />
        <div class="center">
	        <input type="submit" value="Login" /> <input type="button" onclick="javascript:document.location='signup.php';" value="Sign Up" />
        </div>
    </form>
</div>
<?php
}
?>
		</div>
		
	</body>
</html>