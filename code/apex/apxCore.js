/*
 *  File         : apxCore.js
 *  Description  : Holds all methods that can be common across all APEX applications.
 *
 *                 Following the JS pattern used by the APEX team within the internal JS packages/Libraries
 *
 *                 Reference in APEX &CORE_BASE.js/apxCore.js?v=#APP_VERSION#
 *  Change History
 *  Date          Version    Author               Description
 *  ----------    -------    ------               ------------
 */

/*
 * namespace
 */
apxCore = {};

(function(apxCore) {
    /*
     * Private methods
     */
    function _changeButtonText(pButtonId, pButtonText) {
        var textToChangeBackTo = $('#' + pButtonId + '>.t-Button-label').text();

        $('#' + pButtonId + '>.t-Button-label').text(pButtonText);
        setTimeout(function() { back($('#' + pButtonId + '>.t-Button-label'), textToChangeBackTo); }, 2000);

        function back(pButton, pTextToChangeBackTo) { pButton.text(pTextToChangeBackTo); }
    } //_changeButtonText

    function _CopyTextToClipboard(pTextToCopy, pButtonId, pButtonText) {
        navigator.clipboard.writeText(pTextToCopy).then(
            function() {
                _changeButtonText(pButtonId, pButtonText);
                console.log("Async: Copying to clipboard was successful!");
            },
            function(err) {
                console.error("Async: Could not copy text: ", err);
            }
        );
    } //_CopyTextToClipboard

    function _fallbackCopyTextToClipboard(pTextToCopy, pButtonId, pButtonText) {
        var textArea = document.createElement("textarea");
        textArea.style.position = "absolute";
        textArea.style.left = "-9999px";
        textArea.style.top = "0";
        textArea.value = pTextToCopy;
        document.body.appendChild(textArea);
        textArea.focus();
        range = document.createRange();
        range.selectNodeContents(textArea);
        var s = window.getSelection();
        s.removeAllRanges();
        s.addRange(range);
        textArea.setSelectionRange(0, 999999); // A big number, to cover anything that could be inside the element.

        try {
            var successful = document.execCommand("copy");
            var msg = successful ? "successful" : "unsuccessful";
            console.log("Fallback: Copying text command was " + msg);
            _changeButtonText(pButtonId, pButtonText);
        } catch (err) {
            console.error("Fallback: Oops, unable to copy", err);
        }

        document.body.removeChild(textArea);
    } //_fallbackCopyTextToClipboard


    /*
     * Public methods
     */
    /*
      Function: apxCore.copyTextToClipboard
      Purpose: Copy a string to the clipboard

      Parameters:
      pTextToCopy   The string to copy to the clipboard.  (Mandatory)
      pButtonId     The button ID that the user has pressed (Mandatory)
      pButtonText   The Text to be replace the button text after the string has been copied.
                    This text will remain for 2 seconds and then revert back to the original button text
                    If this paramter is not passed the the button text will be replaced with "Copied" (optional)

      Example:
       apxCore.copyTextToClipboard($('#P61_PROJECT_EMAIL').val(),this.triggeringElement.id,$(this.triggeringElement).text()+' Copied');
       apxCore.copyTextToClipboard($('#P42_QUOTE_EMAIL').val(),this.triggeringElement.id,'Email Copied');

      Change History
      Date          Version    Author               Description
      ----------    -------    ------               ------------
   */
    apxCore.copyTextToClipboard = function(pTextToCopy, pButtonId, pButtonText) {
            //default button text if not passed in
            pButtonText = pButtonText || "Copied";
            console.log("pButtonText " + pButtonText);
            if (!navigator.clipboard) {
                _fallbackCopyTextToClipboard(pTextToCopy, pButtonId, pButtonText);
                return;
            }
            _CopyTextToClipboard(pTextToCopy, pButtonId, pButtonText);

        } //apxCore.copyTextToClipboard

    /*
      Function: apxCore.hide_pagination_iff_one_page
      Purpose: Hide pagination area if only one page of results.  Needs to not hide if 11/21/31 rows.

      Parameters:
      pRegion    The APEX region

      Example:
        apxCore.hide_pagination_iff_one_page($(this.triggeringElement).attr('id'));

      Change History
      Date          Version    Author               Description
      ----------    -------    ------               ------------
   */
    apxCore.hide_pagination_iff_one_page = function(pRegion) {

            if ($('#' + pRegion + ' .t-Report-paginationText:first').children().length == 1 &&
                $('#' + pRegion + ' .t-Report-paginationText:first').children().text() == 1) {
                $('#' + pRegion + ' .t-Report-pagination').hide();
            }


        } //apxCore.hide_pagination_iff_one_page

    /*
      Function: apxCore.collapseNavControl
      Purpose: Hide Nav Control menu on pageload.

      Parameters:

      Example:
        apxCore.collapseNavControl();

      Change History
      Date          Version    Author               Description
      ----------    -------    ------               ------------
   */
    apxCore.collapseNavControl = function() {

            let navControlAction = $('#t_Button_navControl');

            let navExpanded = $('.js-navExpanded').length == 1;

            if (navExpanded) {
                navControlAction.click();
            }


        } //apxCore.collapseNavControl

    // as per unit_codes table, but far more efficient encoded here, when using in IG
    apxCore.xsection = function(unit) {
            switch (unit) {
                case 1000:
                    return .001;
                case 100:
                    return .01;
                default:
                    return 1;
            }
        } // xsection


})(apxCore);