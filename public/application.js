require.config({
  paths: {
    backbone: 'bower_components/backbone/backbone',
    underscore: 'bower_components/underscore/underscore',
    jquery: 'bower_components/jquery/dist/jquery',
    marionette: 'bower_components/marionette/lib/backbone.marionette'
  },
  shim: {
    jquery: {
      exports: 'jQuery'
    },
    underscore: {
      exports: '_'
    },
    backbone: {
      deps: ['jquery', 'underscore'],
      exports: 'Backbone'
    },
    marionette: {
      deps: ['jquery', 'underscore', 'backbone'],
      exports: 'Marionette'
    }
  }
});

define(["marionette"], function(Marionette) {
  var App, PM;
  PM = App = new Marionette.Application();
  console.log("App started");
  return PM;
});
