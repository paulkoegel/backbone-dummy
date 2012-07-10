DB.PostsRouter = Backbone.Router.extend
  routes:
    '': 'home'
    'blank': 'blank'

  initialize: ->
    DB.posts = new DB.Posts()
    DB.posts.reset(gon.posts)
    DB.postsView = new DB.PostsView
      collection: DB.posts

  home: ->
    $('.right').append DB.postsView.render().el
  
  blank: ->
    $('.m-main-content-wrapper').empty()
    $('.m-main-content-wrapper').text("ABCDEFGHIJKLM - it's all so blank!")
