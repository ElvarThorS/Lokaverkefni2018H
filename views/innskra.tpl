<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Page Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="/static/lokaverkefni.css" />
    <style>
		body{
			background-color: rgb(253, 253, 76);
		}
		form{ margin-top: 5px;
				 padding-top: 0px;
				 border: solid 3px brown;
				 border-radius: 15px;
				 width: 300px;
				 color: black;
				 background-color: yellow;
				 text-align: center;
				 display: block;
				}
		div{
			margin:auto;
			justify-content: middle;
		}
		h3{
			margin:auto;
			background-color: yellow;
			width: 310px;
			border-radius: 10px;
			border: solid 3px brown;
			text-align: center;
		}
	</style>
</head>
<body>
    <h3>Innskráningarform:</h3>
    <div>
        <form method="POST" action="/doinnskra" accept-charset="ISO-8859-1" id="inn">
            Notendanafn:<br>
            <input type="text" name="user" required><br>
            Lykilorð:<br>
            <input type="text" name="pass" required><br>
            <input type="submit" value="Innskrá">
        </form>
    </div>
</body>
</html>