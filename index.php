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
          <h2>Preferences</h2>
          <p>Masukkan alamat e-mail Anda dibawah ini untuk menerima notifikasi.</p>
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
      if (str === "") {
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
      
      if (str.includes("berita")) {
        var i = str.indexOf("berita")+6;
        str = str.substring(i);
      } else { //cek double-quotes
        var i = str.indexOf("'")+1;
        str = str.substring(i);
        i = str.indexOf("'");
        str = str.substring(0,i);
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
      if (str=="olahraga") {
        var dummy = createDummy();
        var y = setTimeout(function() {appendChild(dummy),500});
      } else {
        xmlhttp.open("GET", "send.php?keyword=" + str, true);
        xmlhttp.send();
      }
      textarea.value="";  
    }
}
    
  function createDummy() {
    var dummy = document.createElement("div");
    dummy.innerHTML = '\
    <div class="callout left" id="dummy">\
        <div class="berita" id="berita1">\
          <img class="foto" src="img/1.jpeg">\
          <div class="judul" onclick="window.open(\'http://olahraga.kompas.com/read/2017/11/25/11575621/mengatur-hasil-petarung-ufc-dipenjara\',\'_blank\');">\
            <div class="bottom-text">Petinju</div>\
          </div>\
        </div>\
        <div class="berita" id="berita2">\
          <img class="foto" src="img/2.jpeg">\
          <div class="judul"\
          onclick="window.open(\'http://olahraga.kompas.com/read/2017/11/26/08545151/peluang-greysiaapriyani-di-mata-pelatih\',\'_blank\');">\
          <div class="bottom-text">Pasangan Ganda Putri Indonesia, Greysia Polili Apriani Rahayu</div></div>\
        </div>\
        <div class="berita" id="berita3">\
          <img class="foto" src="img/3.jpeg">\
          <div class="judul" onclick="window.open(\'https://www.suara.com/news/2017/07/30/211549/menangi-gp-hungaria-vettel-jauhi-dari-kejaran-hamilton\',\'_blank\');">\
            <div class="bottom-text">Pembalap Ferrari Sebastian Vettel</div></div>\
        </div>\
        <div class="berita" id="berita1">\
          <img class="foto" src="img/4.jpeg">\
          <div class="judul"\
          onclick="window.open(\'http://bola.liputan6.com/read/3175302/makin-banyak-senggolan-di-motogp-ini-komentar-rossi\',\'_blank\');">\
          <div class="bottom-text">Pembalap MotoGP</div></div>\
        </div>\
      </div>';
      return dummy;
    }          
</script>
<script type="text/javascript" src="moment.js"></script>
</html>
