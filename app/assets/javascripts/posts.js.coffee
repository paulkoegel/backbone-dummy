$ ->

  window.posts = new Posts()
  # initializing the collection with gon.posts would save a request but I'm keeping fetch for now to play around with it.
  # complete callback, cf.: https://github.com/documentcloud/backbone/issues/423
  posts.fetch().complete ->

    window.postView = new PostView({model: posts.models[0]})
    window.rightPostView = new PostBoxView({model: posts.models[0]})
    window.secondRightPostView = new PostBoxView({model: posts.models[1]})

    $('.left').append(postView.render().el)
    $('.right').append(rightPostView.render().el)
    $('.right').append(secondRightPostView.render().el)
