$(document).ready(function() {
    $( "#video-submit" ).click(function(e) {
        if ($("#video-ytid").val() == '') {
            e.preventDefault();
            alert( "Uh oh! YouTube ID can't be empty!" );
        }
    });
})
