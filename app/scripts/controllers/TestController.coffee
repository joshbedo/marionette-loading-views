define ['App', 'backbone', 'marionette', 'views/welcome_view'], (App, Backbone, Marionette, WelcomeView) ->
  return Backbone.Marionette.Controller.extend  
    index: ->
      console.log "index was called"
