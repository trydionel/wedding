var pathname = function(url) {
  return url.replace(location.protocol + '//' + location.host, '');
}

var highlightCurrentLink = function(element) {
	var path = pathname(element.href)
	var len = path.length;
    
	element.removeClassName('current');
	if (location.pathname == path) {
	  element.addClassName('current');
	} else if (len > 1 && location.pathname.substring(0, len) == path) {
	  element.addClassName('current');
	}
};

document.observe('dom:loaded', function() {
  // Activate nav buttons based on location
  $('nav').select('a').each(function(element) { 
  	highlightCurrentLink(element);
  });

  $('footer').select('a').each(function(element) {
  	highlightCurrentLink(element);
  });
  
  // Fade out flash boxes
  $$('.fade').each(function(element) {
    new Effect.Fade(element, { delay: 5 });
  });
  
  $$('.ajaxForm').each(function(element) {
 		
 	)};
});