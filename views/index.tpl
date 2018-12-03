<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Page Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="/static/lokaverkefni.css" />
	<style>
		body {
        font-family: "Comic Sans MS", cursive, sans-serif	
;
        padding: 20px;
        background-color: rgb(253, 253, 76);
        }

		.division{
			border: solid brown 5px;
			padding: 5px;
			width: 90px;
			border-radius: 10px;
			background-color: yellow;
      display: block;
      float: right;
		}

        /* Header/Blog Title */
        .header {
        padding: 30px;
        font-size: 40px;
        text-align: center;
        background: white;
        border-radius: 30px;
        border: solid brown 5px;
        }

        /* Create two unequal columns that floats next to each other */
        /* Left column */
        .leftcolumn { 
        float: left;
        width: 65%;
        }

        /* Right column */
        .rightcolumn {
        float: left;
        width: 25%;
        padding-left: 20px;
        }

        /* Fake image */
        .fakeimg {
        background-color: #aaa;
        width: 90%;
        padding: 20px;
        }

        /* Add a card effect for articles */
        .card {
        background-color: white;
        padding: 20px;
        margin-top: 20px;
        border-radius: 30px;
        border: solid brown 5px;
        }

        /* Clear floats after the columns */
        .row:after {
        content: "";
        display: table;
        clear: both;
        }

        /* Footer */
        .footer {
        padding: 20px;
        text-align: center;
        background: #ddd;
        margin-top: 20px;border-radius: 30px;
        border: solid brown 5px;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 800px) {
        .leftcolumn, .rightcolumn { 
            width: 100%;
            padding: 0;
        }
        }
	</style>
</head>
<body>
  
  <div class= "division">
    <a class = "takkar" href="/innskra">Innskráning</a>
  </div>
  <div class= "division">
    <a class = "takkar" href="/nyskra">Nýskráning</a>
  </div>	
  <div class="header">
    <h2>BANANA BLOGG&trade;</h2>
  </div>
  % import pymysql
  % conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1106012980', passwd='mypassword', db='1106012980_vef2_lokaverkefni')
  % c = conn.cursor()
  % c.execute("SELECT * FROM 1106012980_vef2_lokaverkefni.blogg")
  % for i in c:     
    <div class="row">
      <div class="leftcolumn">
        <div class="card">
          <h2>{{i[2]}}</h2>
          <h5>{{i[3]}}</h5>
          <p>u/{{i[1]}}</p>
        </div>
      </div>
      %end
      <div class="rightcolumn">
        <div class="card">
          <h2>Um BANANA BLOGG&trade;</h2>
          <div class="fakeimg" style="height:100px;">Image</div>
          <p>BANANA BLOGG&trade; er stutt af DOLE</p>
        </div>
        <div class="card">
          <h3>Vinsæl blogg</h3>
          <div class="fakeimg">Image</div><br>
          <div class="fakeimg">Image</div><br>
          <div class="fakeimg">Image</div>
        </div>
        <div class="card">
          <h3>Follow Me</h3>
          <p>Some text..</p>
        </div>
      </div>
    </div>
        
<div class="footer">
  <h2>Footer</h2>
</div>
   <a href="/members">Aðrir meðlimir:</a>
</body>
</html>