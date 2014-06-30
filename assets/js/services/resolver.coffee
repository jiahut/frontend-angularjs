define [], ->
  (deps)->
    resolver: ["$q", "$rootScope", ($q, $rootScope)->
      dfd = $q.defer()
      require deps, ->
        $rootScope.$apply ->
          dfd.resolve()
      return dfd.promise
      ]
