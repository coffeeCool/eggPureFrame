import request from '../../src/util/helper'
import dd from 'ddeyes'

configFunc = ({
  prefix = ''
  uri = "http://192.168.0.192:3000/todo#{prefix}"
  method = 'GET'
  data = {}
}) =>
  config = {
    uri: uri
    method: method
    data: data
  }

create = ({
  uri
  method
  data
}) =>
  request(
    uri
    {
      method: method
      headers: ''
      data: data
    }
  )

fetch = ({
  uri
  method
  data
}) =>
  request(
    uri
    {
      method: method
      headers: ''
      data: data
    }
  )

update = ({
  uri
  method
  data
}) =>
  request(
    uri
    {
      method: method
      headers: ''
      data: data
    }
  )

remove = ({
  uri
  method
  data
}) =>
  request(
    uri
    {
      method: method
      headers: ''
      data: data
    }
  )

export {
  create
  fetch
  update
  remove
  configFunc
}