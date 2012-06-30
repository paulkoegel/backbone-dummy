window.PostBoxView = Backbone.View.extend(
  tagName: 'div'
  className: 'm-post-box'
  initialize: ->
    _.bindAll @, 'render'
    @model.bind 'change', @render
    @template = JST['posts/box']
  render: ->
    $(@el).html(@template @model.toJSON())
    @
)
