app.controller('themesCtrl', function($scope, $http) {
    $scope.temafelv = function() {
        $http({
            method: "POST",
            url: "Backend/insertRecord.php",
            data: {
                "table": "temak",
                "values": {
                    "nev": "'" + $scope.temacim + "'",
                }
            }
        })
        .then(function(response) {
            alert(response.data.message);
            $scope.temacim = "";
            console.log($scope.temacim)
        });
    }
})