define(['marionette', 'controllers'], function(Marionette, Controllers) {
  PM.addRegions({
    header: 'header',
    main: '#main',
    hero: '#hero',
    footer: '#footer'
  });
  console.log("attaching regions to application");
  PM.on('start', function() {});
  PM.on('initialize:before', function() {});
  return PM.on('initialize:after', function() {
    return Backbone.history.start({
      pushState: true,
      hashChange: false
    });
  });
});
