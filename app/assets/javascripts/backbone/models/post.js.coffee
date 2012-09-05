class DB.Models.Post extends Backbone.Model
  urlRoot: '/posts'
  initialize: ->
    @bind 'change:title change:text', ->
      Backbone.sync 'update', @, {}
