define ['marionette'], (Marionette) ->
  console.log "router created"
  return Marionette.AppRouter.extend
    appRoutes: 
      "": "index"
