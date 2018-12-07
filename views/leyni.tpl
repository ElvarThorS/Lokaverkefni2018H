<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Leyni Síða</title>
    <style>
        body {
        font-family: "Comic Sans MS", cursive, sans-serif	
;       max-width: 60em;
        padding: 20px;
        background-color: rgb(253, 253, 76);
        margin: auto;
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
    <h2>Velkominn á leynisíðuna {{u}} - <a href="/">Aftur á heimasíðu</a></h2>
    <div class="header">
        <h2>BANANA BLOGG&trade;</h2>
      </div>
      <h1>Skrifa blogg:</h1>
      <form method="POST" action="/blogg" accept-charset="ISO-8859-1" id="blogg">
        <label>Titill</label><br>
        <input type="text" name="title" id="Titill" autofocus required placeholder="Hérna skrifarðu titilinn."><br><br>
        <textarea name="content" rows="10" cols="100"></textarea>
        <input type="submit" name="submit" autofocus required placeholder="Hérna áttu að skrifa innihaldið á blogginu">
        <input type="text" name="user" id="Höfundur" autofocus required placeholder="Höfundur">
      </form>
      
      <div class="footer">
        <h2>Footer</h2>
      </div>
    <a href="/members">Aðrir meðlimir:</a>
</body>
</html>