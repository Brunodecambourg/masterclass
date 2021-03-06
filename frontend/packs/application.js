/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
console.log('youhou yeahhh');
import Turbolinks from "turbolinks";
import Rails from "rails-ujs";

//import "jquery/dist/jquery.min";

import { $, jQuery } from "jquery";
// export for others scripts to use
window.$ = $;
window.jQuery = jQuery;

import "init";
import "init/bootstrap/bootstrap";
import "init/stylesheet/stylesheet";

Turbolinks.start();
Rails.start();

//$(document).on('ready', function () {
document.addEventListener('turbolinks:load', () => {
    // initialization of cubeportfolio
    $.HSCore.components.HSCubeportfolio.init('.cbp');
});