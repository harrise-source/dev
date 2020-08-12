jQuery.ajax({
        url: 'http://server:7003/ords/ws/SAGE/createClient',
        type: 'POST',
        data: { 'name': 'EDDIE MURPHY', 'address': 'Beverly Crest Mansion' },
    })
    .done(function() {
        console.log("success");
    })
    .fail(function() {
        console.log("error");
    })
    .always(function() {
        console.log("complete");
    });

//
headerParams = { 'Authorization': 'bearer AH2ISO1EPppCGQFm02hStg..' };
var obj = {
    url: 'http://server:7003/ords/ws/SAGE/createClient',
    type: 'POST',
    dataType: 'text',
    headers: headerParams,
    data: {
        'name': 'EDDIE MURPHY',
        'address': 'Beverly Crest Mansion'
    },

    complete: function(xhr, textStatus) {
        console.log("complete");
        console.log("textStatus:" + textStatus);
    },
    success: function(data, textStatus, xhr) {
        console.log("success");
        console.log("textStatus:" + textStatus);
    },
    error: function(xhr, textStatus, errorThrown) {
        // console.log("error");
        console.log("textStatus:" + textStatus);
    }
}

jQuery.ajax(obj);

//
headerParams = { 'Authorization': 'bearer AH2ISO1EPppCGQFm02hStg..' };
jQuery.ajax({
        url: 'http://server:7003/SAGE/ws/SAGE/createClient',
        type: 'POST',
        dataType: 'text',
        headers: headerParams,
        data: {
            'name': 'EDDIE MURPHY',
            'address': 'Beverly Crest Mansion'
        }
    })
    .done(function() {
        console.log("done");
    })
    .fail(function() {
        console.log("fail");
    })
    .always(function() {
        console.log("always");
    });


http: //server:7003/ords/ws/vhg/logMessage?name="{\"name\":\"ed\",\"address\":\"edgewater\"}"

    --Run as system
alter user DEVMGR grant connect through APEX_REST_PUBLIC_USER;

--TEST POST

var jq = document.createElement('script');
jq.src = "https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js";
document.getElementsByTagName('head')[0].appendChild(jq);

jQuery.ajax({
        url: 'http://server:7003/SAGE/ws/SAGE/createClient',
        type: 'POST',
        data: { 'name': 'EDDIE MURPHY', 'address': 'Beverly Crest Mansion' },
    })
    .done(function() {
        console.log("success");
    })
    .fail(function() {
        console.log("error");
    })
    .always(function() {
        console.log("complete");
    });


jQuery.ajax({
        url: 'http://server:7003/SAGE/ws/SAGE/create_client', // This is dev, final URL to be supplied
        type: 'POST',
        data: {
            'source': '' // website saving lead, eg: smarthomesforliving.com.au/contact-us/
                ,
            'first_name': '' // your field value, eg: jQuery('#input_1_21_3').val()
                ,
            'surname': '',
            'address': '' // location (Perth/SW)
                ,
            'suburb': '',
            'postcode': '',
            'work_phone': '',
            'home_phone': '',
            'mobile': '',
            'email': '',
            'comments': '',
            'preferred_location': ''
                // fields not in web form can be ignored
                // fields in web form not listed here will be addressed later
        },
    })
    .done(function(pData) {
        // pData will contain technical info, to be determined. Currently in text format
        console.log("success:" + pData);
    })
    .fail(function() {
        console.log("error");
    })
    .always(function() {
        console.log("complete");
    });