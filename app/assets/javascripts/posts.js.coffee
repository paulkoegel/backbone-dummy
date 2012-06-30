$ ->

  window.post = new Post(gon.post)
  window.postView = new PostView({model: post})
  $('.left').append(postView.render().el)

  $('.left').on 'blur', '[contenteditable]', (event) ->
    event.preventDefault()
    post.set('title', $(@).text())
    console.log $(@).text()
    console.log post.get('title')
