$ ->
  window.s3AdditionalData = {}
  $("#s3-uploader").S3Uploader(
    # click_submit_target: $('#js-upload-button'),
    additional_data: s3AdditionalData,
    before_add: (file) ->
      s3AdditionalData.name =  $('#name').val()
      $('#js-upload-alert').addClass('hide')
      if file.name.match(/^.*\.csv$/)
        $('#js-invalid-filetype-alert').addClass('hide')
        true
      else
        $('#js-invalid-filetype-alert').removeClass('hide')
        false
  );
  $("#s3-uploader").bind "s3_upload_complete", (e, content) ->
    alert("Upload succeeded!")
    window.location = '/'

  $("#s3-uploader").bind "s3_upload_failed", (e, content) ->
    window.lala = content
    $('.upload').last().remove()
    $('#js-upload-error').text(content.error_thrown || "Connection Lost")
    $('#js-upload-alert').removeClass('hide')