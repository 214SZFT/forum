var app = new angular.module('ForumApp', ['ngRoute', 'ngAnimate']);

app.run(function($rootScope, dbFactory) {
    $rootScope.title = 'Fórum App';
    $rootScope.company = 'Bajai SZC Türr István Technikum';
    $rootScope.author = '2/14.SZFT';
});

app.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'View/main.html',
            controller: 'mainCtrl',
        })
        .when('/forums', {
            templateUrl: 'View/forums.html',
            controller: 'forumsCtrl',
        })
});