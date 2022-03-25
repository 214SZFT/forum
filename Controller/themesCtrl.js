app.controller('themesCtrl', function($scope, $http) {

$scope.temak=[];

    $http({
        method:"POST",
        url:"Backend/getAllRecords.php",
        data:
        {
            "table":"temak"
        }
    }).then(function(response){
        $scope.temak=response.data;
    })

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
    $scope.modosit=function(id,nev){
     $http({
         method: "POST",
         url: "Backend/updateRecord.php",
         data:{
             "id": id,
             "table":"temak",
             "values":{
                 "nev":"'"+nev+"'",
             }
         }
     })
       
    }
})