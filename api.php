<?php

/**
 * Import connection file and start session
 */
require("connection.php");
session_start();

if(isset($_REQUEST["go"]))
{

//Check the method
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    //Sanitizing values
    filter_var($_REQUEST, FILTER_SANITIZE_NUMBER_INT);

    //Build query string and the parameters array
    $sql = "select liber.nomen as liber, volumen.numerus as volumen,versiculus.id as versiculum, scriptum  from liber join volumen on liber.id = volumen.liber join versiculus on volumen.id = versiculus.volumen";
    $params = [];

    //Check if there is at least one, if positive add where clause
    $params_count = 0;
    foreach ($_REQUEST as $key => $value) {
        if ($value != "")
            $params_count++;
    }
    if ($params_count > 0) {
        $sql .= " where ";
    }

    //Add the liber param
    if (isset($_REQUEST["liber"]) &&  $_REQUEST["liber"] != "") {
        $sql .= " liber.id =  ?";
        $params[] = intval(abs($_REQUEST["liber"]));
    }

    //Add the volumen param
    if (isset($_REQUEST["volumen"]) && $_REQUEST["volumen"] != "") {
        //Check if it'll need and clause for where
        if (isset($_REQUEST["liber"]) && $_REQUEST["liber"] != "") {
            $sql .= " and ";
        }

        $sql .= " volumen.id =  ?";
        $params[] = $_REQUEST["volumen"];
    }

    //Add the versiculus param
    if (isset($_REQUEST["versiculus"]) && $_REQUEST["versiculus"] != "") {
        //Check if it'll need and clause for where
        if (isset($_REQUEST["volumen"]) && $_REQUEST["volumen"] != "") {
            $sql .= " and ";
        }

        $sql .= " versiculus.id =  ?";
        $params[] = $_REQUEST["versiculus"];
    }


    $result = $connection->prepare($sql);
    //Echo the built sql
    echo $sql;
    $result->execute($params);
}
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="get">
        <label for="liber">liber</label>
        <input type="number" name="liber" value="<?php echo $_REQUEST['liber']; ?>">
        <label for="volumen">volumen</label>
        <input type="number" name="volumen" value="<?php echo $_REQUEST['volumen']; ?>">
        <label for="versiculus">versiculus</label>
        <input type="number" name="versiculus" value="<?php echo $_REQUEST['versiculus']; ?>">
        <input type="submit" value="go" name="go">
    </form>

    <p>
        <?php 
        //print the result
        if(isset($result))
            echo json_encode($result->fetchAll());
        ?>
    </p>
</body>

</html>