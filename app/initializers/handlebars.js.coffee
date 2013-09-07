initializer =
  name: 'registerHbsTimesHelper'
  initialize: ->
    console.log "registerhbs"
    Em.Handlebars.helper 'times', (n, block)->
      console.log("N: #{n}")
      return "" if n == 0
      elems = for i in [1..n]
        block.fn(i)
      elems.join(' ')

`export default initializer`