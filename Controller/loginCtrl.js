app.controller('loginCtrl',function ($rootScope,$scope,dbFactory) {
    $scope.loggedIn=0;


    $scope.login=function () {
        console.log("nev: "+$scope.nev);
        console.log("jelszo: "+$scope.jelszo);
        if ($scope.nev==null || $scope.jelszo==null) {
            console.log("nev: "+$scope.nev);
            console.log("jelszo: "+$scope.jelszo);
            alert("Hibás név vagy jelszó!");

        } else {
            
        }
    }
})