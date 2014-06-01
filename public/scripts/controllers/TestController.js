define(['app', 'backbone', 'marionette'], function(App, Backbone, Marionette) {
  console.log(App);
  return Backbone.Marionette.Controller.extend({
    index: function() {
      return console.log("index was called");
    }
  });
});
