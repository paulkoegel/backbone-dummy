Post.delete_all

Post.create title: 'Please add a News section to pages#index', text: 'On UI Check.com, please add a news section to the landing page with a twitter feed and the latest blog post'

sleep 1

Post.create title: "There's a BIG difference", text: '... between update_attribute and update_attributes. Also, there is update_column, just to confuse you even more.'
