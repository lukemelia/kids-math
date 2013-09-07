IndexRoute = Ember.Route.extend
  setupController: (controller, model)->
    console.log "ixroute"
    this.controllerFor('equation').generateEquation()

`export default IndexRoute`
