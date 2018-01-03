function download(info,name) {
  var el = document.createElement("A");
  el.setAttribute("href","data:application,"+info);
  el.setAttribute("download",name);    
  if (document.createEvent) {
    var event = document.createEvent('MouseEvents');
    event.initEvent('click', true, true);
    el.dispatchEvent(event);
  }
  else {
    el.click();
  }
}

