app.controller('loginCtrl',function ($scope,dbFactory) {
    $scope.loggedIn=0;
    $scope.user={};

    $scope.login=function () {
        console.log("nev: "+$scope.user.name);
        console.log("jelszo: "+$scope.user.password);
        if ($scope.user.name==null || $scope.user.password==null) {
            
            alert("Hibás név vagy jelszó!");

        } else {
            dbFactory.select('felhasznalok','nev="${user.name}" AND jelszo='+CryptojS.SHA1("${user.password})" ')
        }
    }
})