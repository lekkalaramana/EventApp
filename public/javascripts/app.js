var app = angular.module("myEventApp",['ngRoute']);
app.controller("myCtrl", function($scope, $http, $window){
	$scope.add = function () { 
		var url = window.location.origin
		$http({
			method: 'POST',
			url: url + '/create',
			data: $scope.event
		});
		$scope.event = {};
	};
});