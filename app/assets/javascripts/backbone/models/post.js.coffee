DB.Post = Backbone.Model.extend
  url: ->
    "/posts/#{@id}"
  initialize: ->
    @bind 'change:title', ->
      Backbone.sync 'update', @, {}
      # $.ajax
      #   type: 'PUT'
      #   context: @
      #   url: "/posts/#{@id}"
      #   data: @.attributesForUpdate()
      #   success: ->
      #     console.log 'success'
      #   error: ->
      #     console.log 'error'
      #     console.log @
      #     console.log @previous('title')
      #     @set('title', @previous('title'))
    @bind 'change:text', ->
      Backbone.sync 'update', @, {}

  attributesForUpdate: ->
    post:
      title: @get('title')
      text: @get('text')
