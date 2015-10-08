

/* Simple Namespace Example */
var myNamespace = {};
myNamespace = (function(){

  var _init = function(){
  };
  //return an object 
  return { init: _init};

//self executing
})();

/* OBJECT */
// http://www.w3schools.com/js/js_objects.asp
var anObject = {};

/* ARRAY */
// http://www.w3schools.com/js/js_arrays.asp

var l_array = [];
l_array.push('A MESSAGE');
l_array.length;


/* EXISTS */
    
// In JavaScript, everything is truthy or falsy and for numbers, 0 means false, everything else true. So you could write:

if ($(selector).length)
// and you don't need that > 0 part.


/* Self Executing Function */
function aFunction(){

}();

