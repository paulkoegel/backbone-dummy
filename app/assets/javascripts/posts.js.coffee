$ ->
  $('.m-main-content-wrapper').addClass('is-loaded')
  $('.edit-me').addClass('is-loaded')

  DB.posts = new DB.Posts(gon.posts)
  DB.posts.reset(gon.posts)

  DB.postsView = new DB.PostsView
    collection: DB.posts

  DB.postView = new DB.PostView
    model: DB.posts.models[0]

  $('.right').append DB.postsView.render().el
  $('.left').append DB.postView.render().el


  # EVERYTHING BELOW ONLY KEPT FOR REFERENCE
  # ========================================
  # initializing the collection with gon.posts would save a request but
  # I'm keeping .fetch() for now to play around with it.
  # for .complete() callback, cf.: https://github.com/documentcloud/backbone/issues/423

  # DB.posts.fetch().complete ->
  #   DB.postsView = new DB.PostsView
  #     collection: DB.posts
  #   DB.postView = new DB.PostView
  #     model: DB.posts.models[0]

  #   $('.right').append DB.postsView.render().el
  #   $('.left').append DB.postView.render().el
