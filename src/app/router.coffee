export default (app) ->
  app.get '/test', app.controller.todos.test

  return
