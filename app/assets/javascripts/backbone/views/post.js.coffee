window.PostView = Backbone.View.extend(
  tagName: 'div'
  className: 'm-post'
  initialize: ->
    _.bindAll @, 'render'
    @model.bind 'change', @render
    @template = JST['posts/show']
  render: ->
    $(@el).html(@template @model.toJSON())
    @
)
