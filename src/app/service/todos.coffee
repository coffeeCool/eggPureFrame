import config from '../extend/config'

export default (app) ->
  class TodosService extends app.Service
    constructor: (ctx) ->
      super ctx
      @root = config.baseUri.online_uri
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      opts = {
        headers: {
          config.header.todos.base...
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