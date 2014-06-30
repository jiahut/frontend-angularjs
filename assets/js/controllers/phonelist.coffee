define ['application'], (app) ->
  app.controller 'PhoneListCtrl', ['$scope', ($scope) ->
    $scope.phones = [
      name: "nexus S"
      snippet: "fast jst goet faster with nexus S"
    ,
      name: "Motorola"
      snippet: "The next, next generation tablet"
    ]
  ]
