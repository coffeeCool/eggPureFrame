import config from '../config/config.default'

export default (app) ->
  class TodosService extends app.Service
    constructor: (ctx) ->
      super ctx
      @root = config.myService.uri
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      opts = {
        headers: {
          config.myService.headers...
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