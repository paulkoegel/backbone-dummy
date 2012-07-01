$ ->

  DB.posts = new DB.Posts()
  # initializing the collection with gon.posts would save a request but I'm keeping fetch for now to play around with it.
  # complete callback, cf.: https://github.com/documentcloud/backbone/issues/423
  DB.posts.fetch().complete ->

    DB.postView = new DB.PostView({model: DB.posts.models[0]})
    DB.rightPostView = new DB.PostBoxView({model: DB.posts.models[0]})
    DB.secondRightPostView = new DB.PostBoxView({model: DB.posts.models[1]})

    $('.left').append(DB.postView.render().el)
    $('.right').append(DB.rightPostView.render().el)
    $('.right').append(DB.secondRightPostView.render().el)
