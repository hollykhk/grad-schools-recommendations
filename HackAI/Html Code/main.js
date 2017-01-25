var app = angular.module('angularApp', ['ngResource', 'ngMaterial','ngRoute']);

// configure our routes
app.config(function($routeProvider) {
	console.info("main");
	$routeProvider.when('/', {
			templateUrl : 'index.html',
			controller  : 'memeCtrl'
		}).when('/result', {
			templateUrl : 'result.html',
			controller  : 'universityCtrl'
		});
});