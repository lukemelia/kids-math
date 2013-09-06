IndexRoute = Ember.Route.extend
  setupController: (controller, model)->
    console.log "ixroute"
    this.controllerFor('equation').generateEquation()

    Em.Handlebars.helper 'times', (n, block)->
      console.log("N: #{n}")
      return "" if n == 0
      elems = for i in [1..n]
        block.fn(i)
      elems.join(' ')

`export default IndexRoute`
