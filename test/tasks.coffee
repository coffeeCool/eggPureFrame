import 'shelljs/make'
import dd from 'ddeyes'
import onlineService from './testServices/online'
import localService from './testServices/local'

target.all = ->
  dd 'hello world'

target.online = ->
  onlineService()

target.local = ->
  localService()