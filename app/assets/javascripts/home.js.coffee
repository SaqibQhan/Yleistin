$ ->
  $(document).ready ->
    answers = new Array();
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
          answers.push(1)
        else if type is 'no'
          $('#no_count').val(parseInt(n_count + 1))
          $('#gKwldgEstDown').html(parseFloat(d_count - a_count).toFixed(2) + '%')
          $('#down_count').val(parseFloat(d_count - a_count).toFixed(2))
          answers.push(0)
      else
        q_ids = $('#q_ids').val()
        $('#shareCircle').show()
        $('#questionsContainer').hide()
        $.ajax
          url: '/user_answers/save_answers?q_ids='+ q_ids + '&answers='+ answers,
          type: 'get',
          dataType: 'html',
          processData: false,
          success: (data) ->





        #  SHARE

        share_url = window.location
        share_text = $("#up_count").val() + ' - ' + $("#down_count").val()
        $(".shareCircle").share
          url: share_url
          text: "My general knowledge ranges " + share_text + " , checkout out yours " + share_url + " #Yleistin"
          link: share_url
          facebook:
            name: 'YleistinYleistin'
            title: 'YleistinYleistin'
            text: 'short descriptionYleistin'



