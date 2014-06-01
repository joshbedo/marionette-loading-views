define ['app', 'backbone', 'marionette'], (App, Backbone, Marionette) ->
  #include views
  console.log App
  return Backbone.Marionette.Controller.extend  
    index: ->
      console.log "index was called"
