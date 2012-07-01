$ ->

  DB.posts = new DB.Posts()

  # initializing the collection with gon.posts would save a request but
  # I'm keeping .fetch() for now to play around with it.
  # for .complete() callback, cf.: https://github.com/documentcloud/backbone/issues/423
  DB.posts.fetch().complete ->
    DB.postsView = new DB.PostsView
      collection: DB.posts
    DB.postView = new DB.PostView
      model: DB.posts.models[0]

    $('.right').append DB.postsView.render().el
    $('.left').append DB.postView.render().el
