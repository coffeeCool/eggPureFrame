export default (app) ->
  class TodosService extends app.Service
    constructor: (ctx) ->
      super ctx
      @root = 'xxx'
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      opts = {
        headers: {
          xxxheaders...
          (
            do ->
              if opts?.headers_extra?
              then opts.headers_extra
              else {}
          )...
        }
        opts...
      }
      await @ctx.curl url, opts

    
