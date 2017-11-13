<html>
<head>
  <title>
    NewsUp by NewsFinders
  </title>
  <link href="css/master.css?<?php echo date('l jS \of F Y h:i:s A'); ?>" rel="stylesheet">
  <link rel="shortcut icon" href="img/icon.png?<?php echo date('l jS \of F Y h:i:s A'); ?>" type="image/png">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
  <div class="frame">
    <div class="logo">
      <span id = "title">News<span style="font-family:'calibri';">Up!</span></span><br>
      <span id = "subtitle" style="color:#55709F;">by NewsFinders</span>
    </div>
    <div class="chatwindow" id="scrollbar">
      <div class="callout left" id="greeting">
        Halo! Silahkan ketik kata kunci yang anda inginkan, atau 'help' untuk bantuan.
      </div>
    </div>
    <div class="form">
      <form method="POST">
      <textarea id="keyword" name="keyword" placeholder="ketik pesan anda disini..." onkeyup="pressEnter(event)"></textarea> 
      <button type="button" id="send" name="send" value="" onclick="sendMessage()"><i class="material-icons send-white">send</i>
    </form>
    </div>
  </div>
</body>

<script type="text/javascript">
  var nomor = 1;  
  
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
          // do nothing

      } else {
          // tambahkan chat balloon baru_dari user
          var div = document.createElement("div");
          div.setAttribute("id", "test"+nomor);
          div.setAttribute("class", "callout right");
          div.innerText = moment().format('LT') + "\n" + str;
          document.getElementById("scrollbar").appendChild(div);
          nomor++;

          // setting up xmlhttp request, pengiriman ajax
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            var result = xmlhttp.responseXML;
            var content = result.getElementsByTagName('content')[0].childNodes[0].nodeValue;

            // tambahkan chat balloon baru_dari server
            var div2 = document.createElement("div");
            div2.setAttribute("id", "test"+nomor);
            div2.setAttribute("class", "callout left");
            div2.innerText = content;
            document.getElementById("scrollbar").appendChild(div2);
            var scrollbar = document.getElementById("scrollbar");
            scrollbar.scrollTop = scrollbar.scrollHeight;
            nomor++;
        }
      }
      var substrings = ['help', 'politik', 'olahraga', 'malam', 'teknologi', 'ekonomi', 'siang', 'sore', 'pagi'];
      var i = 0;
      var found  = 0;
      while (found==0 && i < substrings.length) {
        if (str.includes(substrings[i])) {
          // if found terus apa?
          found = 1;
          str = substrings[i];
        } else {
          i++;
        }
      }
      
      xmlhttp.open("GET", "send.php?keyword=" + str, true);
      xmlhttp.send();
      }
      textarea.value="";      
  }
</script>
<script type="text/javascript" src="moment.js"></script>
</html>