export default (app) ->

  class TodosController extends app.Controller
    constructor: (ctx) ->
      super ctx
      @

    home: ->
      { ctx } = @
      ctx.body = 'Hello, world!!!'
    
    reload: ->
      { ctx } = @
      ctx.body = await ctx.service.todos.reload ctx.request.body

  return TodosController