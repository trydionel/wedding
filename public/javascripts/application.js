document.observe('dom:loaded', function() {
  var pathname = function(url) {
    return url.replace(location.protocol + '//' + location.host, '');
  }
  
  // Activate nav buttons based on location
  $('nav').select('a').each(function(element) {
    var path = pathname(element.href)
    var len = path.length;
    
    element.removeClassName('current');
    if (location.pathname == path) {
      element.addClassName('current');
    } else if (len > 1 && location.pathname.substring(0, len) == path) {
      element.addClassName('current');
    }
  });
  
  // Fade out flash boxes
  $$('.fade').each(function(element) {
    new Effect.Fade(element, { delay: 5 });
  });
});