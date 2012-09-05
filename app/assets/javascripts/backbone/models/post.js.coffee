class DB.Models.Post extends Backbone.Model
  urlRoot: '/posts'
  initialize: ->
    @on 'change:title change:text', ->
      Backbone.sync 'update', @, {}
