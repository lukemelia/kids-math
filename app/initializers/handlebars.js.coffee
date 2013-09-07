initializer =
  name: 'registerHbsTimesHelper'
  initialize: ->
    Em.Handlebars.helper 'times', (n, block)->
      return "" if n == 0
      elems = for i in [1..n]
        block.fn(i)
      elems.join(' ')

`export default initializer`