export default (appInfo) ->
  config = {}
  config.keys = appInfo.name + 'hewentao'
  config.middleware = [ 'errorHandler' ]

  config.security =
    csrf:
      enable: false

  config