// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

var jQuery = require("jquery");

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

$(document).on("turbolinks:load", function() {
  
  $(window).scroll(function() {
    var scrollTop = $(this).scrollTop();
    var positionTop = $('#equipments').offset().top;
  
    $('.bg-equipments-overlay').css({
      opacity: function() {
        var elementHeight = $(this).height() / 2;
        var  opacity = ((1 - (positionTop + elementHeight - scrollTop) / elementHeight) * 0.8) + 0.2;
            
        console.log(opacity);
        return opacity;
      }
    });
  });
});