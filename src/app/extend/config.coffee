# 公共的一些配置信息
export default config = do ->
  header = 
    do ->
      base = 
        'Content-Type': 'application/json'
        'X-LC-Id': 'xY1g1VfwXDcyrMLI0UWUjmKe-gzGzoHsz'
        'X-LC-Key': 'rRvdD9oizDgldNbbIpgFPd1X'
      {
        base
        master: {
          base...
          'X-LC-Key': 'eQYsxL68rSQLFyxiPtgxN4wW,master'
        }
      }

  Todos =
    reload:
      uri:
        online: ->
          "#{config.baseUri.online_uri}/#{className.name}"
        local: ->
          "#{config.baseUri.local_uri}/todos"
      method: 'GET'

  # 如果有其他拓展 自行添加 比如 className
  className =
    name: 'Todos'

  _headers:
    baseHeader: header.base
    masterHeader: header.master

  baseUri:
    online_uri: "https://xY1g1Vfw.api.lncld.net/1.1/classes"
    local_uri: "http://192.168.0.192:7001"
    
  # localhost
  local:
    reload:
      headers: header.base
      uri: Todos.reload.uri.local
      method: Todos.reload.method

  # call online
  lc:
    reload:
      className: className.name
      headers: header.base
      uri: Todos.reload.uri.online
      method: Todos.reload.method