@PM = @App = new Backbone.Marionette.Application()

PM.addRegions
  header: 'header'
  main: '#main'
  hero: '#hero'
  footer: '#footer'


PM.on 'start', ->
  # show global notifications and anything global

PM.on 'initialize:before', ->
  #attach profile options

PM.on 'initialize:after', ->
  # set past and eligible products as well as settings
  # create routers

  Backbone.history.start
    pushState: true
    hashChange: false
