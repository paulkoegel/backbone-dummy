class DB.Views.Post extends Backbone.View
  tagName: 'div'
  className: 'm-post'

  initialize: ->
    _.bindAll @, 'render'
    @model.on 'change', @render
    @template = JST['posts/show']

  render: ->
    $(@el).html(@template @model.toJSON())
    @

  events:
    'blur .m-post--headline[contenteditable]': (event) ->
      @model.set 'title', $(event.currentTarget).text()
    'blur .m-post--text[contenteditable]': (event) ->
      @model.set 'text', $(event.currentTarget).text()
