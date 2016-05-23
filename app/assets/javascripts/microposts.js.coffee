updateCountdown = ->
    remaining = 140 - jQuery("#micropost_content").val().length
    if remaining < 0
        remaining = 0
    jQuery(".countdown").text remaining + " characters remaining"

jQuery ->
    updateCountdown()
    $("#micropost_content").change updateCountdown
    $("#micropost_content").keyup updateCountdown
