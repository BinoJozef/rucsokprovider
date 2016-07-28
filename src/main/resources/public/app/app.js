// The main app definition
// --> where you should load other module depdendencies
define([
  'ionic', 
  "services/services",
  "controllers/controllers",
  'ionic-gallery'
], function () {
  'use strict';

  // the app with its used plugins
  var app = angular.module('app', [
    'ionic', "services", "controllers", 'ion-gallery'
  ]);
  // return the app so you can require it in other components
  return app;
});
