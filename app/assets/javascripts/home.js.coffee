$ ->
  $(document).ready ->
    $('.submitAnswer').click ->
      type = $(this).attr('id')
      l_count = parseInt($('#question_limit').val())
      q_count = parseInt($('#question_count').val())
      y_count = parseInt($('#yes_count').val())
      n_count = parseInt($('#no_count').val())
      u_count = parseFloat($('#up_count').val())
      d_count = parseFloat($('#down_count').val())
      a_count = parseFloat($('#add_subtract_count').val())
      if (parseInt(q_count) <= l_count)
        $('#question_count').val(parseInt(q_count + 1))
        if (parseInt(q_count + 1) <= l_count)
          $('#randQuest_' + q_count).css('display', 'none')
          $('#randQuest_' + parseInt(q_count + 1)).css('display', 'block')
        if type is 'yes'
          $('#yes_count').val(parseInt(y_count + 1))
          $('#gKwldgEstUp').html(parseFloat(u_count + a_count).toFixed(2) + ' -')
          $('#up_count').val(parseFloat(u_count + a_count).toFixed(2))
        else if type is 'no'
          $('#no_count').val(parseInt(n_count + 1))
          $('#gKwldgEstDown').html(parseFloat(d_count - a_count).toFixed(2) + '%')
          $('#down_count').val(parseFloat(d_count - a_count).toFixed(2))
      else
        $('#shareCircle').show()
        $('#questionsContainer').hide()

        #  SHARE

        share_url = window.location
        share_text = $("#up_count").val() + ' - ' + $("#down_count").val()
        $(".shareCircle").share
          url: share_url
          text: "My general knowledge ranges " + share_text + " , checkout out yours " + share_url + " #Yleistin"
          link: share_url

