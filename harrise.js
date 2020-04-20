

// DESC : Apex Native loader
// **********************************************************************************************

// apex show native loader
//--
apex.widget.waitPopup();

// apex remove native loadar
//--
$("#apex_wait_overlay").remove();
$(".u*Processing").remove();

// or 
//--
var loader;
loader = apex.widget.waitPopup();
loader.remove();


// with an ajax call
//--
apex.server.process(
  "Set product name", {}, {
  dataType: 'text',
  beforeSend: function () {
    apex.widget.waitPopup();
  },
  success: function (pData) {
    setTimeout(function () {
      $s("P6_PRODUCT_NAME", pData);
      $("#apex_wait_overlay").remove();
      $(".u-Processing").remove();
    }, 2000);
  }
});

//URL : http://oraclemasterminds.blogspot.com/2018/04/displaying*processing*spinners*in*apex.html
//URL : https://chrisjansen.me/apex-loading-when-processing-ajax-call/



// apex - waitPopup until an AJAX callback has finished
//--

var popup = apex.widget.waitPopup();
var promise = apex.server.process("SUBMIT_REQUEST"
  , {
    pageItems: "#P207_SUBMIT_REQUEST_ID"
  }
  , {
    dataType: 'text'
    , success: function (pData) {
      apex.region("p207_myreq_reg").refresh();
    }
  });
  
promise.always(function () {
  popup.remove();
});