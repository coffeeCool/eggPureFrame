# 公共的一些配置信息
export default config = do =>
  header = 
    do =>
      base = 
        'Content-Type': 'application/json'
        'X-LC-Id': ''
        'X-LC-Key': ''
      {
        base
        master: {
          base...
          'X-LC-Key': ''
        }
      }

  _headers:
    baseHeader: header.base
    masterHeader: header.master

  baseUri:
    online_uri: ""
    local_uri: ""
