<?php
header('Content-type:application/json');
require_once('./class/dl.class.php');

$dy = $_GET['dy'];

$dl = new Dl();
$res = $dl->dl_video($dy, 0);
echo json_encode($res);
?>