define ['application'], (app) ->
  console.log app
  app.controller 'HomeCtrl', ['$scope', ($scope) ->
    $scope.name = "jazz..."
  ]
