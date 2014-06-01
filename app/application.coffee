require.config
  baseUrl:"./scripts",
  paths:
    backbone: '../bower_components/backbone/backbone'
    underscore: '../bower_components/underscore/underscore'
    jquery: '../bower_components/jquery/dist/jquery'
    marionette: '../bower_components/marionette/lib/backbone.marionette'

  shim: 
    jquery: 
      exports: 'jQuery'
    underscore: 
      exports: '_'
    backbone: 
      deps: ['jquery', 'underscore']
      exports: 'Backbone'
    marionette: 
      deps: ['jquery', 'underscore', 'backbone']
      exports: 'Marionette'

define ["marionette", "routers/AppRouter", "controllers/TestController"], (Marionette, AppRouter, TestController) ->
  App = new Marionette.Application();

  App.addRegions
    header: 'header'
    main: '#main'
    hero: '#hero'
    footer: '#footer'

  console.log "attaching regions to application"
  
  App.on 'start', ->
    # show global notifications and anything global

  App.on 'initialize:before', ->
    #attach profile options

  App.on 'initialize:after', ->
    # set past and eligible products as well as settings
    # create routers
    
    App.appRouter = new AppRouter
      controller: new TestController()

    Backbone.history.start
      pushState: true
      hashChange: false

    
  App.start()

  return window.App = App

