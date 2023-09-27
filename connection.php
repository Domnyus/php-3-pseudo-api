<?php 

    $server = "127.0.0.1";
    $database = "vulgata";
    $user = "root";
    $password = "root";

    $connection = new PDO("mysql:host={$server};dbname={$database}", $user, $password);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);