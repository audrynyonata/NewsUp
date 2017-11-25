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
      <div id = "title">News<span style="font-family:'calibri';">Up!</span></div>
    </div>
    <div id="settings" onclick="showsettings();"><img id="cog" src="img/cog.png"></div>
      <div id="modal">
        <div id="content">
          <p>Some text in the Modal..</p>
          </div>
      </div>
    <div  id="scrollbar" class="chatwindow">
      <div class="callout left" id="greeting">
        Halo! Silahkan ketik kata kunci yang anda inginkan, atau 'help' untuk bantuan.
      </div>
    </div>

    <div class="form">
      <form method="POST">
      <textarea id="keyword" name="keyword" placeholder="ketik pesan anda disini..." autofocus onkeyup="pressEnter(event)"></textarea> 
      <button type="button" id="send" name="send" value="" onclick="clicksend();"><i class="material-icons send-white">send</i></button>
    </form>
    </div>
  </div>
</body>

<script type="text/javascript">

  var nomor = 1;  
  var isModal = false;
  var modal = document.getElementById("modal");
  var content = document.getElementById("content");
  var scrollbar = document.getElementById("scrollbar");
  var button = document.getElementById("send");
  
  function slideKiri() {
    var pos = 400;
    var id = setInterval(frame, 10);
    function frame() {
      if (pos == 80) {
        clearInterval(id);
      } else {
        pos=pos-10;
        content.style.left = pos + 'px'; 
      }
    }
  }
  
  function slideKanan() {
    var pos = 80
    var id = setInterval(frame, 10);
    function frame() {
      if (pos == 400) {
        clearInterval(id);
        setTimeout(hideModal,110);
      } else {
        pos=pos+10;
        content.style.left = pos + 'px'; 
      }
    }
    
    var hideModal = function() {
      modal.setAttribute("style", "z-index:-999");
    }
  }
  
  function showsettings() {
    var settings = document.getElementById("settings");
    var cog = document.getElementById("cog");
    if (isModal==true) { //lagi buka settings
      slideKanan();
      settings.setAttribute("style","border-style:outset;");
      scrollbar.style.display= "block";
      cog.setAttribute("style","margin-top: 2px;filter:brightness(150%)");
      isModal = false;
    } else {
      slideKiri();
      settings.setAttribute("style","border:inset 1px black;box-shadow: inset 0 2px 4px #000;");
      cog.setAttribute("style","margin-top: 3px;filter:none");
      modal.setAttribute("style", "z-index:1");
      modal.style.display = "block";
      isModal = true;
    }
  }
  
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
 
  function clicksend() {
    button.style.opacity=0; 
    var tick = function() {
      button.style.opacity = +button.style.opacity + 0.05;   
        if (+button.style.opacity < 1) {
          (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16)
        }
      };
    tick();
    sendMessage();
    return true;
  }
  
  
  function sendMessage() {
        var textarea = document.getElementById("keyword");
        var str = textarea.value;
        var appendChild = function(arg) {
          document.getElementById("scrollbar").appendChild(arg);
          arg.style.opacity=0.35; 
          var tick = function() {
            arg.style.opacity = +arg.style.opacity + 0.05;   
            if (+arg.style.opacity < 1) {
              (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16)
            }
          };
        tick();
        scrollbar.scrollTop = scrollbar.scrollHeight;
      }
      if (str == "") {
          // do nothing

      } else {
          // tambahkan chat balloon baru_dari user
          var div = document.createElement("div");
          div.setAttribute("id", "test"+nomor);
          div.setAttribute("class", "callout right");
          div.innerText = moment().format('LT') + "\n" + str;
          appendChild(div);
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
            var x = setTimeout(function() {appendChild(div2)}, 500);
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
