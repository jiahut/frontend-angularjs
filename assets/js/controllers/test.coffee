define ['application'], (controllers) ->
  controllers.controller 'TestCtrl', ['$scope', ($scope) ->
    $scope.name = "jazz..."
  ]
