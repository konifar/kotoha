validate = ->
  $alertContent = $('#alertContent')
  $phraseBox = $('#phraseBox')
  if $phraseBox.val()
    $phraseBox.removeClass('error')
    $alertContent.hide()
    true
  else
    $phraseBox.addClass('error')
    $alertContent.find('#errorMsg').text('Phrase must not be empty :(')
    $alertContent.show()
    false

save = (text, tag_list)->
  $.ajax(
    url: "http://kotoha-server.dev/api/phrases.json",
    dataType: "json",
    type: 'POST',
    data: {
      text: text,
      tag_list: tag_list
    },
    success: (data)->
      if data.error_message
        $('#alertContent').find('#errorMsg').text('Failed to save :(')
        $('#alertContent').show()
      else
        # Show alert
        $('#alertContent').hide()
        $('#successContent').find('#successMsg').text('Saved successfuly! : 『' + data.text + '』')
        $('#successContent').show()
        # Clear
        $('#phraseBox').val('')
        $('#tagBox').importTags('');
        $('#saveBtn').removeClass('disabled')
  ).error(->
    $('#alertContent').find('#errorMsg').text('Failed to save :(')
    $('#alertContent').show()
  )

jQuery ->
  $('#tagBox').tagsInput
    'autocomplete_url': "http://kotoha-server.dev/api/tags.json",
    'autocomplete':{
      selectFirst: true,
      autoFill: true,
      source: (request, response)->
        $.ajax
          url: "http://kotoha-server.dev/api/tags.json",
          dataType: "json",
          data: {
            q: request.term
          },
          success: (tags)->
            response $.map(tags, (tag)->
              {
                label: "#{tag.name}(#{tag.taggings_count})",
                value: tag.name
              }
            )
    },
    'height':'100px',
    'width':'auto',
    'interactive': true,
    'defaultText': 'Add a tag',
    'removeWithBackspace' : true,
    'minChars': 0,
    'maxChars': 60
    'placeholderColor': '#666666'

  $('#saveBtn').click ->
    if $('#saveBtn').hasClass('disabled')
      return

    $('#saveBtn').addClass('disabled')

    if validate()
      tag_array = $.map $('.tag span'), (e, i)->
        $(e).text().trim()
      tag_list = tag_array.join(',')

      save($('#phraseBox').val(), tag_list)
