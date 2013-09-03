App.initializer
  name: 'registerHbsTimesHelper'
  initialize: ->
    debugger
    console.log "registerhbs"
    Handlebars.registerHelper 'times', (n, block)->
      elems = for i in [0..n]
        block.fn(i)
      elems.join(' ')
