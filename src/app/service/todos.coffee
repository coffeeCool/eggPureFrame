import dd from 'ddeyes'
import config from '../extend/config'

export default (app) ->
  class TodosService extends app.Service
    constructor: (ctx) ->
      super ctx
      @root = "#{config.baseUri.online_uri}/Todos"
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      if opts is 'master'
        opts = {
          headers: {
            config._headers.baseHeader...
          }
        }
      else
        opts = {
          headers: {
            config._headers.masterHeader...
          }
        }
      await @ctx.curl url, opts

    reload: ->
      result = await @request ""
      ,
        method: 'get'

      result.data