import 'shelljs/make'
import dd from 'ddeyes'
import {
  create
  fetch
  update
  remove
  configFunc
} from './service'

target.all = ->
  dd 'hello world'

target.create = =>
  config = configFunc(
    method:'POST'
    data: 
      id: '0'
      todoInfo: '哈哈'
  )
  create(
    uri: config.uri
    method: config.method
    data: config.data
  )

target.fetch = =>
  config = configFunc(
    prefix: '/01'
  )
  fetch(
    uri: config.uri
    method: config.method
    data: config.data
  )

target.update = =>
  config = configFunc(
    prefix: '/01'
    method: 'PUT'
    data:
      todoInfo: 'lll'
  )
  update(
    uri: config.uri
    method: config.method
    data: config.data
  )

target.remove = =>
  config = configFunc(
    prefix: '/01'
    method: 'DELETE'
  )
  remove(
    uri: config.uri
    method: config.method
    data: config.data
  )
