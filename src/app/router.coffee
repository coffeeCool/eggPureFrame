export default (app) ->
  app.get '/', app.controller.todos.test

  return
