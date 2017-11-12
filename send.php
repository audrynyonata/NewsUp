<?php
  $keyword = $_GET['keyword'];
  $con = mysqli_connect('localhost','root','','newsup');
  mysqli_select_db($con, 'newsup');
  $sql = "SELECT content FROM reply WHERE query='" . (string)$keyword . "'";
  $result = mysqli_query($con, $sql);
  mysqli_close($con);
  
  header('Content-Type: text/xml');
  $xml = '<reply>';
  while($row = mysqli_fetch_array($result)){
      $xml = $xml . '<content>' . $row['content'] . '</content>';
  }
  $xml = $xml . '</reply>';

  print $xml;
?>
