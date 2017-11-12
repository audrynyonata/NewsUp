function getUserProfile() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var result = xmlhttp.responseXML;
            var content = result.getElementsByTagName('content')[0].childNodes[0].nodeValue;
            document.getElementById('content').value = userid;
        }
    };
    xmlhttp.open('GET','index.php' + id,true);
    xmlhttp.send();
}