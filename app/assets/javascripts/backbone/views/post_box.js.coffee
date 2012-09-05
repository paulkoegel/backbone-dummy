class DB.Views.PostBox extends Backbone.View
  tagName: 'div'
  className: 'm-post_box'
  initialize: ->
    _.bindAll @, 'render'
    @model.on 'change', @render
    @template = JST['posts/box']
  render: ->
    $(@el).html(@template @model.toJSON())
    @
