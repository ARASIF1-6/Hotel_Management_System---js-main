<?php
    session_start();
    include('../controller/sessioncheck.php');
?>



<?php
    include('../model/noticeModel.php');
    $notice = getallnotice();
?>


<html lang="en">

<head>
    <title> All Notification </title>
    <link rel="stylesheet" href="../assets/css/draft.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body>
    <?php include('dashboard_menu.php'); ?>
    <section class="container">
        <div class="">

        </div>
        <?php  for($i=0; $i<count($notice); $i++){ ?>
                        
            <p class="write_about"> <?=$notice[$i]['Notice']?> </p>
                        
        <?php } ?>
    
</body>

</html>