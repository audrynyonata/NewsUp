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
      <div class="callout left" id="greeting">
        Halo! Silahkan ketik kata kunci yang anda inginkan, atau 'help' untuk bantuan.
      </div>
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
          
      } else {
          var div = document.createElement("div");
          div.setAttribute("id", "test"+nomor);
          div.setAttribute("class", "callout right");;
          div.innerText = str;
          document.getElementById("scrollbar").appendChild(div);
          nomor++;
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            var result = xmlhttp.responseXML;
            var content = result.getElementsByTagName('content')[0].childNodes[0].nodeValue;
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
</html>
