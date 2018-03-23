var plugins = {
    // menu: $('.sidebar'),
    slider: $('#slider'),
};
$(document).ready(function () {
    function runSlider() {
        plugins.slider.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
            height:400
        });
    }
    if (plugins.slider.length) {
        runSlider();
    }
});