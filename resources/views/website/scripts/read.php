<?php
    ini_set('display_errors', 1);
    error_reporting(E_ALL);


    $tbl = "event";
    
    function getAll($tbl) {
        include('connect.php');
        $queryAll = "SELECT * FROM {$tbl}";
        $runAll = mysqli_query($link, $queryAll);
        if($runAll) {
            return $runAll;
        }else{
            return "There was a problem accessing this information.";
        }
    }
  

?>