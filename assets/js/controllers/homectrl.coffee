define ['application'], (app) ->
  app.controller 'HomeCtrl', ['$scope', 'UserFactory', ($scope, UserFactory) ->
    $scope.name = "jazz..."
    $scope.users = UserFactory.query()
  ]
