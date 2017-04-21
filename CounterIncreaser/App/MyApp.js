(function () {
    var app = angular.module('MyApp', ['ngRoute']);
    app.controller('HomeController', function ($scope, api) {
        $scope.currentValue = 1;
        $scope.Increment = function (currentValue) {
            if ($scope.currentValue >= 10) {
                alert("Cannot be increment!");
                api.GetTransactionWithParam(currentValue, 0, "Failed");
            }
            else {
                $scope.currentValue = currentValue + 1;
                api.GetTransactionWithParam(currentValue, $scope.currentValue, "Success");
            }


        }

    })
    .factory('api', function ($http) {
        var fac = {};
        fac.GetTransactionWithParam = function (currentNumber, numberAfterAdded, status) {
            return $http.post('/Data/AddToCounterInformation', { CurrentNumber: currentNumber, NumberAfterAdded: numberAfterAdded, Status: status });
        }
        return fac;
    });
})();