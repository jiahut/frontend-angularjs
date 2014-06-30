#= require "_helper"

# requirejs makes life a lot easier when dealing with more than one
# javascript file and any sort of dependencies, and loads faster.

# for more info on require config, see http://requirejs.org/docs/api.html#config

define ["angular","routes","services/resolver","ngRoute","ngResource"], (angular,routes, resolver)->
  app = angular.module "app", [
    "ngRoute"
    "ngResource"
    ]
  app.config ["$routeProvider", '$locationProvider','$controllerProvider',
    "$compileProvider","$filterProvider", "$provide",
    ($routeProvider, $locationProvider, $controllerProvider, $compileProvider,
    $filterProvider, $provide)->
      app.controller = $controllerProvider.register
      app.directive = $compileProvider.directive
      app.filter = $filterProvider.register
      app.factory = $provide.factory
      app.service = $provide.service

      # $routeProvider.when '/temp',
      #   templateUrl: 'templates/test.html'
      #   controller:  "TestCtrl"
      # .otherwise
      #   redirectTo: '/'
      # $locationProvider.html5Mode(true).hashPrefix("!")
      # return
      # ]


      # $locationProvider.html5Mode(true)
      if(routes.routes)
        angular.forEach routes.routes, (route, path)->
          $routeProvider.when path,
            templateUrl: route.templateUrl
            resolve: resolver(route.deps)
      if(defaultPath = routes.defaultRoutePath)
        $routeProvider.otherwise
          redirectTo: defaultPath
      ]
  return app
