// Displays a page-level success message ‘Changes saved!’.
apex.message.showPageSuccess( "Changes saved!" );

// show message from dialog page on close
if (this.data.successMessage ) {

    apex.message.showPageSuccess(this.data.successMessage.text);
}