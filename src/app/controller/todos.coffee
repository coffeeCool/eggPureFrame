export default (app) ->

  class TodosController extends app.Controller
    constructor: (ctx) ->
      super ctx
      @

    test: ->
      { ctx } = @
      ctx.body = 'Hello, world!!!'
    
  return TodosController