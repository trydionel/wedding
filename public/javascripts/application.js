document.observe('dom:loaded', function() {
  $$('.fade').each(function(element) {
    new Effect.Fade(element, { delay: 5 });
  });
});