
app.controller('mainCtrl', function($scope, $rootScope, dbFactory) {
    $scope.feedback = '';
    $scope.records = [];
    dbFactory.selectAll('forumok').then(function(res) {
        $scope.records = res.data;
    });

    $scope.newRecord = function() {
        
    }


    $scope.updateRecord = function(id) {
        
    }

    $scope.deleteRecord = function(id) {
        
    }
});