// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

var jQuery = require("jquery");

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

$(document).on("turbolinks:load", function() {

  $(document).on('click', '.close-alert', function(){
    $(".close-alert").parents(".alert").remove();
  });
  
  /*$(window).scroll(function() {
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
  });*/
});

// Navbar: transparent over the hero carousel, solid once the page scrolls
function updateNavbar() {
  var navbar = $("#site-navbar");
  var overHero = $(".carousel").length > 0 && $(window).scrollTop() < 40;
  navbar.toggleClass("navbar-transparent", overHero);
}

$(window).on("scroll", updateNavbar);
$(document).on("turbolinks:load", updateNavbar);

// Close the mobile menu after choosing a link
$(document).on("click", "#navbarNavDropdown a", function() {
  if ($("#navbarNavDropdown").hasClass("show")) $(".navbar-close").trigger("click");
});

// Portfolio image viewer
var lightboxIndex = 0;
var lightboxTouchX = null;

function lightboxImages() {
  return $(".portfolio-item").map(function() { return this.href; }).get();
}

function showLightboxImage(index) {
  var images = lightboxImages();
  lightboxIndex = (index + images.length) % images.length;

  var lightbox = $("#lightbox");
  var image = lightbox.find(".lightbox-image");
  image.addClass("loading");
  image.one("load", function() { image.removeClass("loading"); });
  image.attr("src", images[lightboxIndex]);

  lightbox.find(".lightbox-counter").text((lightboxIndex + 1) + " / " + images.length);
  lightbox.find(".lightbox-thumbs img").removeClass("active")
    .eq(lightboxIndex).addClass("active")[0].scrollIntoView({ block: "nearest", inline: "center" });
}

function openLightbox(index) {
  var lightbox = $("#lightbox");
  var thumbs = lightbox.find(".lightbox-thumbs").empty();
  $.each(lightboxImages(), function(i, src) {
    thumbs.append($("<img>", { src: src, alt: "", "data-index": i }));
  });

  showLightboxImage(index);
  lightbox.addClass("open").attr("aria-hidden", "false");
  $("body").addClass("lightbox-open");
}

function closeLightbox() {
  $("#lightbox").removeClass("open").attr("aria-hidden", "true");
  $("body").removeClass("lightbox-open");
}

$(document).on("click", ".portfolio-item", function(event) {
  event.preventDefault();
  openLightbox($(".portfolio-item").index(this));
});

$(document).on("click", "#lightbox .lightbox-prev", function() { showLightboxImage(lightboxIndex - 1); });
$(document).on("click", "#lightbox .lightbox-next", function() { showLightboxImage(lightboxIndex + 1); });
$(document).on("click", "#lightbox .lightbox-close", closeLightbox);
$(document).on("click", "#lightbox .lightbox-thumbs img", function() {
  showLightboxImage($(this).data("index"));
});

// Clicking the dark backdrop closes the viewer
$(document).on("click", "#lightbox", function(event) {
  if (event.target === this) closeLightbox();
});

$(document).on("keydown", function(event) {
  if (!$("#lightbox").hasClass("open")) return;
  if (event.key === "Escape") closeLightbox();
  if (event.key === "ArrowLeft") showLightboxImage(lightboxIndex - 1);
  if (event.key === "ArrowRight") showLightboxImage(lightboxIndex + 1);
});

// Swipe left/right on touch screens
$(document).on("touchstart", "#lightbox", function(event) {
  lightboxTouchX = event.originalEvent.touches[0].clientX;
});

$(document).on("touchend", "#lightbox", function(event) {
  if (lightboxTouchX === null) return;
  var distance = event.originalEvent.changedTouches[0].clientX - lightboxTouchX;
  lightboxTouchX = null;
  if (Math.abs(distance) > 50) showLightboxImage(lightboxIndex + (distance < 0 ? 1 : -1));
});

$(document).on("turbolinks:before-cache", closeLightbox);
