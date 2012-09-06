class DB.Models.Post extends Backbone.Model
  urlRoot: '/posts'

  initialize: ->
    @on 'change:title change:text', ->
      Backbone.sync 'update', @, {}

  validate: (attrs) ->
    regex = /[!]/
    if regex.test(attrs.title)
      console.log "Validation failed"
      return "Validation failed"
