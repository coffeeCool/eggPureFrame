import 'shelljs/make'
import dd from 'ddeyes'
import onlineService from './testServices/online'

target.all = ->
  dd 'hello world'

target.online = ->
  onlineService()