class DB.Collections.Posts extends Backbone.Collection
  url: '/posts'
  model: DB.Models.Post
  intialize: ->
    @on 'add', (post) ->
      console.log 'added something to the PostsCollection'
