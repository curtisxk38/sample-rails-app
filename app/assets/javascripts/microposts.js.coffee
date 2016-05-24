updateCountdown = ->
    remaining = 140 - jQuery("#micropost_content").val().length
    if remaining < 0
        remaining = 0
    plural = "s"
    if remaining == 1
        plural = ""
    jQuery(".countdown").text remaining + " character" + plural + " remaining"

jQuery ->
    updateCountdown()
    $("#micropost_content").change updateCountdown
    $("#micropost_content").keyup updateCountdown
