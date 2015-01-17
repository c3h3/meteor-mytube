
Router.configure
  layoutTemplate: 'layout'
    

Meteor.startup ->
  Router.map -> 
    
    @route "index",
      path: "/"
      template: "index"

      waitOn: ->
        Meteor.subscribe "queryMedia"