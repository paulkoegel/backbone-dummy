class DB.Views.Posts extends Backbone.View
  tagName: 'section'
  className: 'm-posts'

  initialize: ->
    _.bindAll @, 'render'
    @template = JST['posts/index']
    @collection.on 'reset', @render
    @collection.on 'add', @render

  render: ->
    # Marionette makes this a LOT less painful
    $(@el).html @template()
    $posts = @.$('.m-posts--list')
    @collection.each (post) ->
      view = new DB.Views.PostBox
        model: post
      $posts.append view.render().el
    @
