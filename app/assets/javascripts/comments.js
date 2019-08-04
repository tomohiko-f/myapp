$(document).ready(function() {
  var user_signed_in = $('#user_signed_in:hidden').val();
  
  if ($('#comment-field').val().length == 0 || user_signed_in == "false") {
    $('#submit').prop('disabled', true);
  }
  $('#comment-field').on('keydown keyup keypress change', function() {
    if ( $(this).val().length > 0 && user_signed_in == "true" ) {
      $('#submit').prop('disabled', false);
    } else {
      $('#submit').prop('disabled', true);
    }
  });
});