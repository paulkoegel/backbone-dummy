class DB.Routers.AppRouter extends Backbone.Router
  routes:
    '': 'root'
    'blank': 'blank'

  initialize: ->

  root: ->
    console.log 'Router: "/"'

    DB.posts = new DB.Collections.Posts()

    DB.posts.fetch().complete ->
      console.log 'Fetched PostsCollection from server.'
      DB.postsView = new DB.Views.Posts
        collection: DB.posts
      $('.right').html DB.postsView.render().el

      DB.postView = new DB.Views.Post
        model: DB.posts.first()
      $('.left .m-post-wrapper').html DB.postView.render().el

  blank: ->
    $('.m-main-content-wrapper .left').text("ABCDEFGHIJKLM - it's all so blank!")
    $('.m-main-content-wrapper .right').text("XYZXYT")
