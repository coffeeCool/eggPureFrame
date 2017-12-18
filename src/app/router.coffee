export default (app) ->
  app.get '/', app.controller.todos.home
  app.get '/todos', app.controller.todos.reload

  return
