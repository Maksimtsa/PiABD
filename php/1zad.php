 <?php
// phpinfo();

// print 'accessing a mariaDB database via MySQL';
// print '<br> <br> ';


// connecting to the recipes database 

$db_addr = "localhost";
$usr = "root";
$passwd = "";
$db_name = "ptaki";

$con = new mysqli($db_addr,$usr,$passwd,$db_name);

//SQL query

$query = "SELECT nazwa_zwyczajowa FROM gatunki WHERE nazwa_zwyczajowa LIKE 'M%' ;";

if ($result = $con -> query($query))
    while($row = $result -> fetch_array())
        print( $row["nazwa_zwyczajowa"]."<br>" );
else
    print ($con->errno." ".$con->eror);

$con->close();

print ( "<br><br> connection closed successfully." );

?>
