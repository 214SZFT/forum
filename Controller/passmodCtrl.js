app.controller('passmodCtrl',function($rootScope,$scope,dbFactory){
    $scope.passmod=function(){
            if ($scope.oldpass == null || $scope.newpass1 == null || $scope.newpass2 == null)
            {
                alert("Nem adtad meg az adatokat!");
            }
            else
            {
                if ($scope.newpass1 != $scope.newpass2)
                {
                    alert("A megadott új jleszavak nem egyeznek!");
                }
                else
                {
                    if ($scope.oldpass == $scope.newpass1)
                    {
                        alert("Az új jelszó megegyezik a régivel!");
                    }
                    else
                    {
                        let pattern =  /^[a-zA-Z0-9]{8,}$/;
                        if (!$scope.newpass1.match(pattern))
                        {
                            alert("A jelszó nem felel meg a minimális biztonsági kritériumoknak!");
                        }
                        else
                        {
                            dbFactory.select('felhasznalok','email="'+$rootScope.userMail+'"')
                            .then(function(response){
                                if (response.data.passwd != CryptoJS.SHA1($scope.oldpass))
                                {
                                    alert('Nem megfelelő a jelenlegi jelszó!');
                                }
                                else
                                {
                                    $http({
                                        method: 'POST',
                                        url: './API/updateRecord.php',
                                        data: {
                                            "id":response.data.ID,
                                            "table":"users",
                                            "values":{
                                                "passwd":"'"+CryptoJS.SHA1($scope.newpass1)+"'"
                                            }
                                        }
                                    })
                                    .then(function(response){
                                        alert(response.data.message);
                                    });
                                }
                            });
                            /*$http({
                                method: 'POST',
                                url: './API/getOneRecord.php',
                                data:
                                    {
                                        'table':'users',
                                        'felt':'email="'+$rootScope.userMail+'"'
                                    }
                            })
                            .then(function(response){
                                if (response.data.passwd != CryptoJS.SHA1($scope.oldpass))
                                {
                                    alert('Nem megfelelő a jelenlegi jelszó!');
                                }
                                else
                                {
                                    $http({
                                        method: 'POST',
                                        url: './API/updateRecord.php',
                                        data: {
                                            "id":response.data.ID,
                                            "table":"users",
                                            "values":{
                                                "passwd":"'"+CryptoJS.SHA1($scope.newpass1)+"'"
                                            }
                                        }
                                    })
                                    .then(function(response){
                                        alert(response.data.message);
                                    });
                                }
                            });*/
                        }
                    }
                }
            }
        }
})