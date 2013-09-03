IndexRoute = Ember.Route.extend
  setupController: (controller, model)->
    this.controllerFor('equation').generateEquation()

Em.Handlebars.helper 'times', (n, block)->
  elems = for i in [1..n]
    block.fn(i)
  elems.join(' ')

`export default IndexRoute`
