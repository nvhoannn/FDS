// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("bootstrap")
global.$ = require('jquery')
import jQuery from 'jquery'
window.jQuery = jQuery
window.$ = jQuery
const images = require.context('../images', true)
require("../css/application.scss")
require("./owl-carousel.js");
require("./accordions.js");
require("./datepicker.js");
require("./scrollreveal.min.js");
require("./jquery.counterup.min.js");
require("./imgfix.min.js");
require("./slick.js");
require("./lightbox.js");
require("./isotope.js");
require("./custom.js");
require("packs/main")
Rails.start()
Turbolinks.start()
ActiveStorage.start()
document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})
