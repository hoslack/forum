<?php
//This page let users sign up
include('config.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<?php echo $design; ?>/style.css" rel="stylesheet" title="Style" />
        <title>Sign Up</title>
    </head>
    <body>
    	<div class="header">
        	<a href="<?php echo $url_home; ?>"><img src="<?php echo $design; ?>/images/logo.png" alt="Forum" /></a>
	    </div>
<?php
<<<<<<< HEAD
if(isset($_POST['username'], $_POST['password'], $_POST['passverif'], $_POST['email'], $_POST['avatar']) and $_POST['username']!='')
=======
if(isset($_POST['username'], $_POST['password'], $_POST['passverif'], $_POST['email'], $_POST['user_image']) and $_POST['username']!='')

		$imgFile = $_FILES['user_image']['name'];
		$tmp_dir = $_FILES['user_image']['tmp_name'];
		$imgSize = $_FILES['user_image']['size'];
>>>>>>> forum/forum
{
	if(get_magic_quotes_gpc())
	{
		$_POST['username'] = stripslashes($_POST['username']);
		$_POST['password'] = stripslashes($_POST['password']);
		$_POST['passverif'] = stripslashes($_POST['passverif']);
		$_POST['email'] = stripslashes($_POST['email']);
<<<<<<< HEAD
		$_POST['avatar'] = stripslashes($_POST['avatar']);
=======
		

>>>>>>> forum/forum
	}
	if($_POST['password']==$_POST['passverif'])
	{
		if(strlen($_POST['password'])>=6)
		{
			if(preg_match('#^(([a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+\.?)*[a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+)@(([a-z0-9-_]+\.?)*[a-z0-9-_]+)\.[a-z]{2,}$#i',$_POST['email']))
			{
				$username = mysql_real_escape_string($_POST['username']);
				$password = mysql_real_escape_string(sha1($_POST['password']));
				$email = mysql_real_escape_string($_POST['email']);
<<<<<<< HEAD
				$avatar = mysql_real_escape_string($_POST['avatar']);
=======
				$userpic=$_POST['user_image'];


>>>>>>> forum/forum
				$dn = mysql_num_rows(mysql_query('select id from users where username="'.$username.'"'));
				if($dn==0)
				{
					$dn2 = mysql_num_rows(mysql_query('select id from users'));
					$id = $dn2+1;
<<<<<<< HEAD
					if(mysql_query('insert into users(id, username, password, email, avatar, signup_date) values ('.$id.', "'.$username.'", "'.$password.'", "'.$email.'", "'.$avatar.'", "'.time().'")'))
=======

					$upload_dir = 'user_images/'; // upload directory
	
			$imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension
		
			// valid image extensions
			$valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
		
			// rename uploading image
			$userpic = rand(1000,1000000).".".$imgExt;
				
			// allow valid image file formats
			if(in_array($imgExt, $valid_extensions)){			
				// Check file size '5MB'
				if($imgSize < 5000000)				{
					move_uploaded_file($tmp_dir,$upload_dir.$userpic);
				}
				else{
					$errMSG = "Sorry, your file is too large.";
				}
			}
			else{
				$errMSG = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";		
			}

					if(mysql_query('insert into users(id, username, password, email, userPic, signup_date) values ('.$id.', "'.$username.'", "'.$password.'", "'.$email.'", "'.$userpic.'", "'.time().'")'))
>>>>>>> forum/forum
					{
						$form = false;
?>
<div class="message">You have successfully been signed up. You can now log in.<br />
<a href="login.php">Log in</a></div>
<?php
					}
					else
					{
						$form = true;
						$message = 'An error occurred while signing you up.';
					}
<<<<<<< HEAD
				}
=======
				//}
>>>>>>> forum/forum
				else
				{
					$form = true;
					$message = 'Another user already use this username.';
				}
<<<<<<< HEAD
			}
=======
			//}
>>>>>>> forum/forum
			else
			{
				$form = true;
				$message = 'The email you typed is not valid.';
			}
<<<<<<< HEAD
		}
=======
		//}
>>>>>>> forum/forum
		else
		{
			$form = true;
			$message = 'Your password must have a minimum of 6 characters.';
		}
<<<<<<< HEAD
	}
=======
	//}
>>>>>>> forum/forum
	else
	{
		$form = true;
		$message = 'The passwords you entered are not identical.';
	}
<<<<<<< HEAD
}
=======
//}
>>>>>>> forum/forum
else
{
	$form = true;
}
<<<<<<< HEAD
=======

>>>>>>> forum/forum
if($form)
{                                              
	if(isset($message))
	{
		echo '<div class="message">'.$message.'</div>';
	}
?>
<div class="content">
<div class="box">
	<div class="box_left">
    	<a href="<?php echo $url_home; ?>">Forum Index</a> &gt; Sign Up
    </div>
	<div class="box_right">
    	<a href="signup.php">Sign Up</a> - <a href="login.php">Login</a>
    </div>
    <div class="clean"></div>
</div>
<<<<<<< HEAD
    <form action="signup.php" method="post">
        Please fill this form to sign up:<br />
        <div class="center">
            <label for="username">Username</label><input type="text" name="username" value="<?php if(isset($_POST['username'])){echo htmlentities($_POST['username'], ENT_QUOTES, 'UTF-8');} ?>" /><br />
            <label for="password">Password<span class="small">(6 characters min.)</span></label><input type="password" name="password" /><br />
            <label for="passverif">Password<span class="small">(verification)</span></label><input type="password" name="passverif" /><br />
            <label for="email">Email</label><input type="text" name="email" value="<?php if(isset($_POST['email'])){echo htmlentities($_POST['email'], ENT_QUOTES, 'UTF-8');} ?>" /><br />
            <label for="avatar">identifier<span class="small">(optional)</span></label><input type="text" name="avatar" value="<?php if(isset($_POST['avatar'])){echo htmlentities($_POST['avatar'], ENT_QUOTES, 'UTF-8');} ?>" /><br />
=======
    <form action="signup.php" method="post" enctype="multipart/form-data" class="form-horizontal">

        Please fill this form to sign up:<br />
        <div class="center">
            <label for="username">Username</label><input type="text" name="username" value="<?php if(isset($_POST['username'])){echo htmlentities($_POST['username'], ENT_QUOTES, 'UTF-8');} ?>" /><br />

            <label for="password">Password<span class="small">(6 characters min.)</span></label><input type="password" name="password" /><br />

            <label for="passverif">Password<span class="small">(verification)</span></label><input type="password" name="passverif" /><br />

            <label for="email">Email</label><input type="text" name="email" value="<?php if(isset($_POST['email'])){echo htmlentities($_POST['email'], ENT_QUOTES, 'UTF-8');} ?>" /><br />

            <label class="control-label">Profile Img.</label>
            <input class="input-group" type="file" name="user_image" accept="image/*" /><br />

>>>>>>> forum/forum
            <input type="submit" value="Sign Up" />
		</div>
    </form>
</div>
<?php
}
?>
		
	</body>
</html>