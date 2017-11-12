iniHanyaSementara(var nomor) {
	alert('lala');
}

iniHanyaSementara2(var nomor) {
  var content = "lala";
  var div2 = document.createElement("div");
  div2.setAttribute("id", "test"+nomor);
  div2.setAttribute("class", "callout left");
  div2.innerText = content;
  document.getElementById("scrollbar").appendChild(div2);
  var scrollbar = document.getElementById("scrollbar");
  scrollbar.scrollTop = scrollbar.scrollHeight;
  nomor++;
}