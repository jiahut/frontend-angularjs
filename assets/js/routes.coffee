define [], ->
  defaultRoutePath: "/temp"
  routes:
    '/home':
      templateUrl: 'templates/home.html'
      deps: [
        'controllers/homectrl'
        ]
    '/about/:person':
      templateUrl: 'templates/about.html'
      deps:
        'controllers/TestCTrl'
