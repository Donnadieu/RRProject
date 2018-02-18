function displayOutside(){
  if (contentWin != null) {
    Dialog.alert("Close the window 'Test' before opening it again!",{width:200, height:130}); 
  }
  else {
    contentWin = new Window({maximizable: false, resizable: false, hideEffect:Element.hide, showEffect:Element.show, minWidth: 10, destroyOnClose: true})
    contentWin.setContent('test_content', true, true)
    contentWin.show();	

    // Set up a windows observer, check ou debug window to get messages
    myObserver = {
      onDestroy: function(eventName, win) {
        if (win == contentWin) {
          $('container').appendChild($('test_content'));
          contentWin = null;
          Windows.removeObserver(this);
        }
        debug(eventName + " on " + win.getId())
      }
    }
    Windows.addObserver(myObserver);
    }
  }
}