import dd from 'ddeyes'
import toolFuc from '../util/helper'
import services from '../../src/app/extend'

export default onlineService = ->
  results = await services.lc.reload toolFuc
  dd results