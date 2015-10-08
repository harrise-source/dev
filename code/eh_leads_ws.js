

jQuery.ajax({
  url: 'http://vhorawlfrd1:7003/vbs/rest/client/create', // This is dev, final URL to be supplied
  type: 'POST',
  data: {  "first_name"          : "ED"
          ,"last_name"             : true 
          ,"address"             : 1234
          ,"suburb"              : ""
          ,"postcode"            : ""
          ,"work_phone"          : ""
          ,"home_phone"          : ""
          ,"mobile"              : ""
          ,"email"               : ""
          ,"comments"            : ""
          ,"sales_office"        : ""
          ,"div_code"            : ""
          ,"preferred_location"  : ""
          ,"p_payload"    :  "{'name':'value', 'name2':'value2'}"
          //   [
          //     {
          //       "name":"1"
          //     },
          //     { "other_thing":"2"
          //   }
          // ]
        }
,
})
.done(function(pData) {
  // pData will contain technical info, to be determined. Currently in text format
  console.log("success:"+pData);
})
.fail(function() {
  console.log("error");
})
.always(function() {
  console.log("complete");
});

var jq = document.createElement('script');
jq.src = "https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js";
document.getElementsByTagName('head')[0].appendChild(jq);


/*'http://vhorawlfrd1:7003/vbs/rest/lead/create*/
/*------------------------------------------------------------------------------------------------*/
/*  ,"user_ip"           : "192.168.1.120"
    ,"user_agent"        : "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36"

*/

// Call with JSON Array

var v_attributes = "[{'name':'Occupation','value':''},{'name':'Work type','value':'fulltime/partime'},{'name':'user-ip','value':'192.168.1.123'},{'name':'Current status','value':'At home'},{'name':'Building with partner','value':'123'},{'name':'Number of children','value':'123'},{'name':'Density code','value':'R20'},{'name':'Current deposit','value':'5,00,000'},{'name':'Car loan repayments','value':'500000'},{'name':'Credit card','value':'500000'},{'name':'Personal loans:','value':'500000'}]";

var v_attributes = '[{"name":"Occup\'ation","value":"Food Taster"},{"name":"Work type","value":"fulltime/partime"},{"name":"user-ip","value":"192.168.1.123"},{"name":"Current status","value":"At home"},{"name":"Building with partner","value":"123"},{"name":"Number of children","value":"123"},{"name":"Density code","value":"R20"},{"name":"Current deposit","value":"5,00,000"},{"name":"Car loan repayments","value":"500000"},{"name":"Credit card","value":"500000"},{"name":"Personal loans:","value":"500000"}]';

jQuery.ajax({
  url: 'http://vhorawlfrd1:7003/vbs/rest/lead/create', // This is dev, final URL to be supplied
  type: 'POST',
  data: {  "first_name"        : "NICK"
          ,"last_name"         : "CUMMINS10" 
          ,"email_address"     : "KELLYK@VHGROUP.COM.AU"
          ,"phone_contact"     : "0401231230"
          ,"no_mailout"        : "Y"
          ,"source"            : "ID WEBSITE"
          ,"source_ref"        : "/current_prom.html"
          ,"promotion_ref"     : "IPAD_GIFT"
          ,"div_code"          : "H"
          ,"sales_office"      : "V"
          ,"comments"          : "THIS IS A COMMENT FROM THE ENQUIRY"
          ,"attributes"        :  v_attributes
          // ,"attributes"        :  "{'Work type':'fulltime/partime'},"+
          //                         "{'user-ip':'192.168.1.123'},"+
          //                         // "{'user-agent':'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36'},"+
          //                         "{'Occupation':'none'},"+
          //                         "{'Current status':'At home'},"+
          //                         "{'Occupation':'none'},"+
          //                         "{'Building with partner':'Yes'},"+
          //                         "{'Number of children':5},"+
          //                         "{'Density code':R20},"+
          //                         "{'Current deposit':5,00,000},"+
          //                         "{'Car loan repayments':500000},"+
          //                         "{'Credit card limit':500000},"+
          //                         "{'Personal: loans':500000}"

        //   ,"attributes"        :  '[{"name":"Occupation","value":"none"}
        //                            ,{"name":"Work type","value":"fulltime/partime"}   
        //                            ,{"name":"user-ip","value":"192.168.1.123"}        
        //                            ,{"name":"Occupation","value":"none"}              
        //                            ,{"name":"Current status","value":"At home"}
        //                            ,{"name":"Building with partner","value":""} 
        //                            ,{"name":"Number of children","value":""}
        //                            ,{"name":"Density code","value":"R20"}
        //                            ,{"name":"Current deposit","value":"5,00,000"} 
        //                            ,{"name":"Car loan repayments","value":"500000"}
        //                            ,{"name":"Credit card","value":"500000"}  
        //                            ,{"name":"Personal loans:","value":"500000"} ]'
        }

,
})
.done(function(pData) {
  // pData will contain technical info, to be determined. Currently in text format
  console.log("done:"+pData);
})
.fail(function() {
  console.log("fail");
})
.always(function() {
  console.log("always");
});





{  "first_name"          : "ed"
  ,"surname"             : ""
  ,"address"             : ""
  ,"suburb"              : ""
  ,"postcode"            : ""
  ,"work_phone"          : ""
  ,"home_phone"          : ""
  ,"mobile"              : ""
  ,"email"               : ""
  ,"comments"            : ""
  ,"sales_office"        : ""
  ,"div_code"            : ""
  ,"preferred_location"  : ""
  ,"other_attributes"    :
  [
    "name1"       : "value",
    "name2"       : "value",
    "name3"       : 4000,
    "name4"       : "value",
    "name5"       : "value",
    "name6"       : true,
    "name7"       : "value",
  ]
}

{  "first_name"        : "ED"
  ,"last_name"         : "HARRIS" 
  ,"email_address"     : "EDDIE@SAGECOMPUTING.COM.AU"
  ,"phone_contact"     : "0408642530"
  ,"source"            : "ID WEBSITE"
  ,"div_code"          : "H"
  ,"sales_office"      : "I"
  -- ,"attributes"    :  "[{'attribute':'Work type', 'value':'fulltime/partime'},{'attribute':'Occupation', 'value':'none'}]"
  ,"attributes"    :  "{'Work type':'fulltime/partime'},{'Occupation':'none'}"
}

  /*
  vbs_ws.create_client
    (p_source      => :source
    ,p_first_name  => :first_name
    ,p_surname     => :surname
    ,p_address     => :address
    ,p_suburb      => :suburb
    ,p_postcode    => :postcode
    ,p_work_phone  => :work_phone
    ,p_home_phone  => :home_phone
    ,p_mobile      => :mobile
    ,p_email       => :email
    ,p_comments    => :comments
    ,p_preferred_location => :preferred_location
  );

jQuery.ajax({
  url: 'http://vhorawlfrd1:7003/vbs/ws/vbs/create_client', // This is dev, final URL to be supplied
  type: 'POST',
  data: {'source'      : '' // website saving lead, eg: smarthomesforliving.com.au/contact-us/
        ,'first_name'  : '' // your field value, eg: jQuery('#input_1_21_3').val()
        ,'surname'     : ''
        ,'address'     : '' // location (Perth/SW)
        ,'suburb'      : ''
        ,'postcode'    : ''
        ,'work_phone'  : ''
        ,'home_phone'  : ''
        ,'mobile'      : ''
        ,'email'       : ''
        ,'comments'    : ''
        ,'preferred_location'  : ''
        // fields not in web form can be ignored
        // fields in web form not listed here will be addressed later
        },
})
.done(function(pData) {
  // pData will contain technical info, to be determined. Currently in text format
  console.log("success:"+pData);
})
.fail(function() {
  console.log("error");
})
.always(function() {
  console.log("complete");
});


  */