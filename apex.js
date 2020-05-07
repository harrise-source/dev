
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
