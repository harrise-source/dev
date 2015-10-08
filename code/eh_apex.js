/****************************************************************************
  jQuery data 
  http://api.jquery.com/data/
*****************************************************************************/

events = $(source).data('events');


/****************************************************************************
  APP: Land
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


apex.server.process("get_order_info", {
    // x01: "ED"
    // pageItems: "#P34_SELECTED_ORDER"
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



/****************************************************************************
    jQuery
*****************************************************************************/

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



