import Resolver from 'resolver';

var App = Ember.Application.create({
  LOG_ACTIVE_GENERATION: true,
  LOG_VIEW_LOOKUPS: true,
  modulePrefix: 'appkit',
  Resolver: Resolver
});

import hbsInitializer from 'appkit/initializers/handlebars';
Ember.Application.initializer(hbsInitializer);

import routes from 'appkit/routes';
App.Router.map(routes);

export default App;
