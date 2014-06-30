require.config
  paths:
    'angular' : '/bower_components/angular/angular'
    'ngResource': '/bower_components/angular-resource/angular-resource'
    'ngCookies': '/bower_components/angular-cookies/angular-cookies'
    'ngProgressLite': '/bower_components/ngprogress-lite/ngprogress-lite'
    'ngRoute': '/bower_components/angular-route/angular-route'
  shim:
    ngResource:
      deps: ['angular']
      exports: 'angular'
    ngCookies:
      deps: ['angular'],
      exports: 'angular'
    ngProgress:
      deps: ['angular']
      exports: 'angular'
    ngRoute:
      deps: ['angular']
      exports: 'angular'
    angular:
      exports : 'angular'
  baseUrl: '/js'

deps =  ["application"]
# deps.push "controllers/controllers"
# deps.push "controllers/phonelist"
requirejs deps, ()->
  angular.bootstrap document, ["app"]
