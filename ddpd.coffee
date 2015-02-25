@Services = new Meteor.Collection 'services'

if Meteor.isServer
  Meteor.startup ->
    Services.remove {}
    for service in services
      Services.insert service

if Meteor.isClient
  Template.body.helpers
    services: ->
      Services.find {}

    servicesCount: ->
      Services.find({}).count()

  Template.service.helpers
    ddpVar: ->
      @collection + 'DDP'

    capitalize: (s) ->
      s[0].toUpperCase() + s[1..]
  
