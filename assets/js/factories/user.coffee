define ["application"], (app)->
  app.factory 'UserFactory', ($resource) ->
    $resource "http://localhost:8088/home", {},
      query:
        method: 'GET'
        isArray: true
      create:
        method: 'POST'
