$(document).on('turbolinks:load', function () {
    $('.genre-multi-selector').select2({
      placeholder: 'Select Genre(s) of this mix',
      width: '25%',
    });
});
