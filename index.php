<html>
<head>
  <title>
    NewsUp by NewsFinders
  </title>
  <link href="css/master.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/icon.png" type="image/png">
</head>
<body>
  <div class="frame">
    <div class="logo">
      <span id = "title">NewsUp</span><br>
      <span id = "subtitle">by NewsFinders</span>
    </div>
    <div class="chatwindow" id="scrollbar">
      <div class ="callout left">haha</div>
      <br>
      <div class ="callout right">haha juga ah</div>
      <div class ="callout right" id="test"></div>
      <br>
    </div>
    <div class="form">
      <form method="POST">
      <textarea id="keyword" name="keyword" placeholder="ketik pesan anda disini..." onkeyup="pressEnter(event)"></textarea> 
      <button type="submit" id="send" name="send" value="" onclick="sendMessage()">
    </form>
    </div>
  </div>
</body>

<script type="text/javascript">
  function pressEnter(e) {
    if (e.keyCode === 13)
      if (e.shiftKey) {
        //kasih newline
      } else {
        // start your submit function
        sendMessage();  
    }
    return true;
 }
 
  function sendMessage() {
      var textarea = document.getElementById("keyword");
      var str = textarea.value;
      if (str == "") {
          
      } else {
          document.getElementById("test").innerText = str;
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("test").innerText = str;
          }
      }
      xmlhttp.open("GET", "send.php?message=" + str, true);
      xmlhttp.send();
      }
      textarea.value="";
  }
</script>
</html>
