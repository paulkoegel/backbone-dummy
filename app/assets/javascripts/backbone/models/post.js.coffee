class DB.Models.Post extends Backbone.Model
  urlRoot: '/posts'

  initialize: ->

  events:
    'change:title': 'sync'
    'cahnge:text': 'sync'

  sync: ->
    Backbone.sync 'update', @, {}

  validate: (attrs) ->
    regex = /[!]/
    if regex.test(attrs.title) # or regex.test(attrs.description)
      console.log "Validation failed"
      return "Validation failed"
