DB.PostsView = Backbone.View.extend
  tagName: 'section'
  className: 'm-posts'
  initialize: ->
    _.bindAll @, 'render'
    @template = JST['posts/index']
    @collection.bind 'reset', @render
  render: ->
    $(@el).html(@template())
    $posts = @.$('.m-posts--list')
    @collection.each (post) ->
      view = new DB.PostBoxView
        model: post
        collection: @collection
      $posts.append view.render().el
    @
