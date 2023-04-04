<?php
    ini_set('display_errors', 1);
    error_reporting(E_ALL);

    header("Access-Control_Allow_Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    require_once("config.php");

    $label = "name";

    // table name = events
    $tbl = "events";

   
   // get all 
    $getContent = getAll($tbl);


        if 
        ($getContent) {
            $contentArray = array();
            while($row = mysqli_fetch_array($getContent, MYSQLI_ASSOC)) {
                $contentArray[] = $row;
            }
            echo json_encode($contentArray);

        }else{

            echo "There was a problem accessing this information.";
        }



?>