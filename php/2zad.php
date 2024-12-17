<?php
// phpinfo();
echo "<h1>EoneNumberOne</h1>";
echo "</br></br></br></br></br></br></br>";
echo "AAA";

$host = "localhost";
$user = "root";
$password = "";
$db_name = "agencjaartystycznaprzyklad";

$connection_string = new mysqli($host, $user, $password, $db_name);

$query = "SELECT ImieAgenta FROM Agenci";

if($result = $connection_string->query($query))
    while($row=$result->fetch_array())
        echo $row["ImieAgenta"].'<br>';

// $connection_string->close();

    
?>
