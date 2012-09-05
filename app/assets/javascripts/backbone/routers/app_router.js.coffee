class DB.Routers.AppRouter extends Backbone.Router
  routes:
    '': 'root'
    'blank': 'blank'

  initialize: ->

  root: ->
    console.log 'Router: "/"'

    DB.posts = new DB.Collections.Posts()
    DB.posts.fetch().complete ->
      console.log 'success'
      DB.postsView = new DB.Views.Posts
        collection: DB.posts
      $('.right').html DB.postsView.render().el

      console.log DB.posts

      DB.postView = new DB.Views.Post
        model: DB.posts.first()

      $('.right').append DB.postsView.render().el
      $('.left .m-post-wrapper').html DB.postView.render().el

      $('.m-post-add').click (event) ->
        event.preventDefault()
        DB.posts.add new DB.Post({title:'Added via Button'})

  
  blank: ->
    $('.m-main-content-wrapper .left').text("ABCDEFGHIJKLM - it's all so blank!")
    $('.m-main-content-wrapper .right').text("XYZXYT")
