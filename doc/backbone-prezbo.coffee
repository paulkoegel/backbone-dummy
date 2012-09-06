class DB.User = class Backbone.Model
  urlRoot: '/users'
  
  slug: ->
    @get('firstName') + ' ' + @get('lastName')
  
  initialize: ->
    @on 'change:firstName change:lastName', ->
      Backbone.sync 'update', @, {}







# # # # # # # #
