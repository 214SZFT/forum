app.controller('loginCtrl',function ($scope,dbFactory) {
    $scope.loggedIn=0;
    $scope.user={};

    $scope.login=function () {
        console.log("nev: "+$scope.user.name);
        console.log("jelszo: "+$scope.user.password);
        if ($scope.user.name==null || $scope.user.password==null) {
            
            alert("Hiányzó név vagy jelszó!");

        } else {
            
            dbFactory.select('felhasznalok','nev="'+$scope.user.name+'" AND jelszo="'+CryptojS.SHA1($scope.user.password)+'"')
            .then(function (response) {
                $scope.user=response;
                if ($scope.user.length==0) {
                    alert("Hibás belépési adatok!");
                } else {
                    alert("Belépett");
                }
            })
        }
    }
})