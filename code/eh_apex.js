

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


// Displays a page-level success message ‘Changes saved!’.
apex.message.showPageSuccess( "Changes saved!" );

// show message from dialog page on close
if (this.data.successMessage ) {

    apex.message.showPageSuccess(this.data.successMessage.text);
}



// Displays an alert ‘Load complete.’, then after the dialog closes executes the ‘afterLoad()’ function.
apex.message.alert( "Load complete.", function(){
    afterLoad();
});



// Key Down!!!   -- the other Key Events don't fire on tab(9)

// JavaScript Expression
//
this.browserEvent.which === 13 //enter or 
|| this.browserEvent.which === 9 //tab




// button builder
//
// https://apex.oracle.com/pls/apex/f?p=42:6100:::NO:::


// buttons classes  - quick

// link text 
<span class="t-Icon fa fa-icon_name" aria-hidden="true"></span>#COLUMN#


<span class="t-Icon fa fa-gavel" aria-hidden="true"></span>#JOB_NO#

//link attributes
class="t-Button t-Button--icon t-Button--hot t-Button--primary t-Button--simple t-Button--iconLeft"

class="t-Button t-Button--icon t-Button--primary t-Button--simple t-Button--iconLeft"

t-Button--noUI
t-Button--simple

"t-Button--stretch"




/****************************************************************************
  APP: 
*****************************************************************************/

function openModal(p_div_id)
{
     gBackground.fadeIn(100)
;     gLightbox = jQuery('#' + p_div_id);
     gLightbox.addClass('modalOn').fadeIn(100);
}

/*
  Standard Apex API to close an Apex 4.2 Modal
  --------
*/
closeModal();

/*
  Common Modal Save Button Logic
  --------
*/
function modal_save_btn(e) {
  // hide the keyboard
  document.activeElement.blur();
  // close the modal
  closeModal();
  // stop anything underneath firing
  e.browserEvent.stopPropagation();
  e.browserEvent.preventDefault();
}


/****************************************************************************
    Apex
*****************************************************************************/

apex.debug('l_value:'+l_value);


/*
triggering element get data-id attribute
*/
$(t.triggeringElement).attr('data-id');
$(t.triggeringElement).data('id');

/*
  Trigger a region refresh from JS (Note doesn't work with IR use gReport.pull();)
*/
$('#region-id').trigger('apexrefresh');


// Set css from JS via jQuery css
$('span.loadingdata')
  .css({'border':'1px solid #FC0','background':'#FFC'})
  .text('Preparing document, please wait...')
  .slideDown(200);

// Get tag in pElement and find data id 
id = $(pElement).find('span').first().data('id');


/* 
  APEX.SERVER.PROCESS
  ---------------------
*/


apex.server.process("get_info", {
    // x01: "ED"
    // pageItems: "#P10_SELECTED"
  }, {
    // dataType: "text",
    // async:false,
    error: function(pjqXHR, pTextStatus, pErrorThrown) {
      console.log('error:' + pTextStatus);
    },
    success: function(pData, pTextStatus, jqXHR) {
      console.log('return: ' + pTextStatus);
      console.log(JSON.stringify(pData));
      console.log(JSON.stringify(jqXHR));
    },// success
  } 
); // process


apex.jQuery.ajax({
                    type: 'POST',
                    url: 'wwv_flow.show',
                    data: {
                           p_request: "APPLICATION_PROCESS=save_image",
                           p_flow_id: $('#pFlowId').val(),
                           p_flow_step_id: $('#pFlowStepId').val(),
                           p_instance: $('#pInstance').val()
                      
                    },
                    async: true,
                      error: function(pjqXHR, pTextStatus, pErrorThrown) {
                      console.log('error:' + pTextStatus);
                    },
                      success: function(pData, pTextStatus, jqXHR) {
                      console.log('return: ' + pTextStatus);
                      console.log(JSON.stringify(pData));
                      console.log(JSON.stringify(jqXHR));

                      //if you dbs process returns a JSON String with an attribute of status
                      if(JSON.parse(pData).status !== 'success'){
                        apex.debug('error - '+l_debug);
                      } else {
                        //success functionality
                      }
                    }// success
                });   




/*
  Capture a key release Escape Key
  ---------------------
*/
$(document).on('keyup', function(event) {
  // console.log('keyup:'+event.which);
  if(event.which === 27){
    closeModal();  
  }
  
});


$("div.uHorizontalTabs ul li a").replaceWith(function(){
        return $("<span>" + $(this).html() + "</span>");
});



