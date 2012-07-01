DB.PostView = Backbone.View.extend(
  tagName: 'li'
  className: 'm-post--list--item'
  initialize: ->
    _.bindAll @, 'render'
    @model.bind 'change', @render
    @template = JST['posts/show']
  render: ->
    $(@el).html(@template @model.toJSON())
    @
  events:
    'blur .m-post-headline[contenteditable]': (event) ->
      @model.set 'title', $(event.currentTarget).text()
    'blur .m-post-text[contenteditable]': (event) ->
      @model.set 'text', $(event.currentTarget).text()
)
