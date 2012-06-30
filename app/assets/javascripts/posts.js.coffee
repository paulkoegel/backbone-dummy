$ ->

  window.post = new Post(gon.post)
  window.secondPost = new Post(gon.second_post)

  window.postView = new PostView({model: post})
  window.rightPostView = new PostBoxView({model: post})
  window.secondRightPostView = new PostBoxView({model: secondPost})

  $('.left').append(postView.render().el)
  $('.right').append(rightPostView.render().el)
  $('.right').append(secondRightPostView.render().el)

  # $('.left').on 'blur', '[contenteditable]', (event) ->
  #   event.preventDefault()
  #   post.set('title', $(@).text())
  #   console.log $(@).text()
  #   console.log post.get('title')
