window.PostView = Backbone.View.extend(
  className: 'm-post'
  initialize: ->
    _.bindAll @, 'render'
    @model.bind 'change', @render
    @template = JST['posts/show']
  render: ->
    $(@el).html(@template @model.toJSON())
    console.log $(@el)
    console.log @model.id
    $(@el).attr('data-id', @model.id)
    @
  events:
    'blur .m-post-headline[contenteditable]': (event) ->
      @model.set 'title', $(event.currentTarget).text()
    'blur .m-post-text[contenteditable]': (event) ->
      @model.set 'text', $(event.currentTarget).text()

)
