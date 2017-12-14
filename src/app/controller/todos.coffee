export default (app) ->

  class TodosController extends app.Controller
    constructor: (ctx) ->
      super ctx
      @

    test: (params) ->
      { ctx } = @
      ctx.body = 'Hello, world!!!'
    
  return TodosController