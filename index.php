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
      <div id="bar" class="centered"></div>
      <div id="modal">
        <div id="content">
          <h2>Pengaturan notifikasi</h2>
          <p>Masukkan alamat e-mail Anda untuk mulai menerima notifikasi. Untuk berhenti, cukup kosongkan kotak dibawah ini.</p>
          <form method="POST" class="centered" onsubmit="return false;">
            <div id="preferences">
              <input id="email" type="text" name="email" placeholder="my@email.com">
              <button id="clear" type="reset"></button>
            </div>            
            <button type="button" id="save" name="save" onclick="saveemail();">Simpan</button>          
          </form>
          
          <h4>About</h4>
          <p>NewsUp! adalah sebuah chatbot untuk memudahkan Anda mencari berita. Untuk bantuan, ketik 'help' pada chatbox dan tekan enter!</p>
          <p>NewsUp! &copy; 2017 NewsFinders. Credits to aggi, audry, ega, royyan.</p>
          </div>
      </div>
    <div id="scrollbar" class="chatwindow">
      <div class="callout left" id="greeting">
        Halo! "NewsUp!" adalah sebuah chatbot untuk memudahkan Anda mencari berita.
      </div>
      <div class="callout left" id="greeting">
        Silahkan ketik kata kunci yang anda inginkan, atau 'help' untuk bantuan.
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
  var bar = document.getElementById("bar");
  var email = document.getElementById("email");
  var save = document.getElementById("save");  
  var z = setInterval(shownotification,6000);
  var w = setInterval(hidenotification,3000);
  
  function shownotification() {
    if (email.value!="") {
      bar.innerText="Sent notification to: " + email.value;
      bar.setAttribute("style","z-index:3;");
      if (bar.style.opacity >= 1) {
     } else {
        bar.style.opacity=0; 
        var tick = function() {
        bar.style.opacity = +bar.style.opacity + 0.05;   
        if (+bar.style.opacity < 1) {
          (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 32)
        }
      }
      };
    tick();
    } else {

    }
  }
  function hidenotification() {
    if (bar.style.opacity >= 1) {
    bar.setAttribute("style","z-index:-1000;");
   }
  }
  function saveemail() {
    if (email.value=="") {
      save.disable = "true"
    } else {
      shownotification();
      slideKanan();
      settings.setAttribute("style","border-style:outset;");
      scrollbar.style.display= "block";
      cog.setAttribute("style","margin-top: 2px;filter:brightness(150%)");
      isModal = false;
    }
  }
  
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
  
  window.onclick = function(event) {
    if (event.target == modal || event.target==keyword || event.target==save) {
        slideKanan();
        settings.setAttribute("style","border-style:outset;");
        scrollbar.style.display= "block";
        cog.setAttribute("style","margin-top: 2px;filter:brightness(150%)");
        isModal = false;
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
      modal.setAttribute("style", "z-index:2");
      modal.style.display = "block";
      isModal = true;
    }
  }
  
  function pressEnter(e) {
    if (e.keyCode === 13)
      if (e.shiftKey) {
        //kasih newline
      } else {
        var textarea = document.getElementById("keyword");
        sendMessage();
        textarea.value="";
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
      if (textarea.value != "" && textarea.value != "\n") {
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
      
      var isBerita = "false";
      
      if (str.includes("genre")) {
        str = "help";
        isBerita = "false";
      } else if (str.includes("setting") || str.includes("notif") || str.includes("atur")) {
        showsettings();
        textarea.value="";
        str = "help";
        isBerita = "false";
      } else if (str.includes("kas")) {
        str = "terima kasih";
        isBerita = "false";
      } else if (str.includes("berita")) {
        var i = str.indexOf("berita")+6;
        str = str.substring(i);
        isBerita = "true";
      } else if (str.includes('"')) { //cek double-quotes
        var i = str.indexOf('"')+1;
        str = str.substring(i);
        i = str.indexOf("'");
        str = str.substring(0,i);
        isBerita = "true";
      }
      
      if (isBerita==="true") {
        var substrings = ['olah','raga', 'ekonomi', 'teknologi', 'politik', 'hari ini', 'jokowi', 'artis', 'infotainment', 'selebrit', 'bola', 'messi', 'sport', 'terkini', 'lifestyle', 'hidup', 'tekno', 'digital' ,'data'];
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
        if (found == 1) {
          isBerita = "false";
        }
      } else {
        var substrings = ['olahraga', 'ekonomi', 'teknologi', 'politik', 'pagi', 'sore', 'siang', 'malam', 'halo', 'hai', 'konnichiwa', 'hello', 'bantuan', 'cara', 'help', 'hari ini', 'jokowi', 'artis', 'infotainment', 'selebrit', 'bola', 'messi', 'sport', 'terkini', 'lifestyle', 'hidup', 'tekno', 'digital' ,'data'];
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
      }
     
      xmlhttp.open("GET", "send.php?keyword=" + str +"&isBerita=" + isBerita, true);
      xmlhttp.send();
    }
}
    
</script>
<script type="text/javascript" src="moment.js"></script>
</html>
