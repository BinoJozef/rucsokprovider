define([ 'jquery' ], function($) {

    rucsokController.$inject = [ '$scope', 'rucsokService',
    'addRucsokFormService', '$ionicHistory', '$state', 'authResolverFactory', 'userProfileService']

    function rucsokController($scope, rucsokService, addRucsokFormService,
        $ionicHistory, $state, authResolverFactory, userProfileService) {

        $scope.rucsoks = [];
        $scope.addRucsok = addRucsok;
        $scope.showRucsok = showRucsok;
        $scope.isLoggedIn = userProfileService.isLoggedIn();
        $scope.goToLogin = goToLogin;
        $scope.goToProfile = goToProfile;

        // Sim
        $scope.isLoggedIn = true;

        refresh();

        var updateListener = $scope.$on('rucsok.added', function(event) {
            refresh();
        });

        $scope.$on('$destroy', function() {
            updateListener();
        });

        function refresh() {
            rucsokService.getRucsok().then(function(data) {
                $scope.rucsoks = data;
            });
        }

        function visit(url) {
            var win = window.open(url, '_blank');
            win.focus();
        }

        function addRucsok() {
            addRucsokFormService.showView();
        }

        function showRucsok(item) {
            $state.go('single', {
                id : item.id
            });
        }

        function goToLogin() {
            $state.go('login');
        }

        function goToProfile() {
            $state.go('profile');
        }

    }

    return rucsokController;
})