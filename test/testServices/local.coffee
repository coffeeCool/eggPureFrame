import dd from 'ddeyes'
import toolFuc from '../util/helper'
import services from '../../src/app/extend'

export default localService = ->
  results = await services.local.reload toolFuc
  dd results