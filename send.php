<?php
  $keyword = $_GET['keyword'];
  $isBerita = $_GET['isBerita'];
  
  $con = mysqli_connect('localhost','root','','newsup');
  mysqli_select_db($con, 'newsup');
  if ($isBerita == "true") {
    $sql = "SELECT content FROM reply WHERE content LIKE '%" . (string)$keyword . "%'";
  } else {
    $sql = "SELECT content FROM reply WHERE query LIKE '%" . (string)$keyword . "%'";
  }
  $result = mysqli_query($con, $sql);
  mysqli_close($con);
  
  header('Content-Type: text/xml');
  $xml = '<reply>';
  if($row = mysqli_fetch_array($result)){
      $xml = $xml . '<content>' . $row['content'] . '</content>';
  } else {
      $xml = $xml . '<content>' . "Maaf, silahkan masukkan kata kunci yang benar". '</content>';
  } 
  
  $xml = $xml . '</reply>';

  print $xml;
?>
