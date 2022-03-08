
app.controller('forumsCtrl', function($scope, $rootScope, dbFactory) {
    $scope.feedback = '';
    $scope.temak = [];
    $scope.nev = "";
    $scope.leiras = "";
    $scope.isUpdate = false;

    dbFactory.selectAll('temak').then(function(res) {
        $scope.temak = res.data;
        console.log(res.data);
    });

    $scope.newRecord = function() {
        if($scope.nev == "" || $scope.leiras == "") return alert("Nem adtál meg minden adatot");
        dbFactory.insert("forumok", {nev: $scope.nev, leiras: $scope.leiras, letrehozva:"2022-03-18", felhasznalo_id:8, tema_id: $scope.tema, lathato: 1}).then((res)=>{
            console.log(res.data);
            console.log("Adatok felvéve!!!!!");
        })
    }


    $scope.updateRecord = function(id) {
        
    }

    $scope.deleteRecord = function(id) {
        
    }
});