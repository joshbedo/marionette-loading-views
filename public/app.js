this.PM = this.App = new Backbone.Marionette.Application();

PM.addRegions({
  header: 'header',
  main: '#main',
  hero: '#hero',
  footer: '#footer'
});

PM.on('start', function() {});

PM.on('initialize:before', function() {});

PM.on('initialize:after', function() {
  return Backbone.history.start({
    pushState: true,
    hashChange: false
  });
});
