// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_tree ./angle/
//= require jquery_ujs
// require turbolinks

//= require cytoscape


//= require graphing

//= require ./direct_upload


$('.js-rename-button').click(function() {
  var button = $(this);
  var name = button.data('uploadName');
  var id = button.data('uploadId');
  $('#data_upload_name').val(name);
  $('#rename-upload-modal').modal('show');
  var form = $('#data-upload-rename-form');
  form.attr('action', form.data('action-template').replace('ID', id));
});