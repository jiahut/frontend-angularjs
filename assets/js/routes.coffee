define [], ->
  defaultRoutePath: "/temp"
  routes:
    '/home':
      templateUrl: 'templates/home.html'
      deps: [
        'controllers/homectrl'
        'factories/user'
        ]
    '/about/:person':
      templateUrl: 'templates/about.html'
      deps:
        'controllers/TestCTrl'
