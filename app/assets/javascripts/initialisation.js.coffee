# set up namespace
window.DB = new Object

DB.Models      = {}
DB.Collections = {}
DB.Routers     = {}
DB.Views       = {}

$ ->
  DB.appRouter = new DB.Routers.AppRouter()

  Backbone.history.start
    pushState: true
