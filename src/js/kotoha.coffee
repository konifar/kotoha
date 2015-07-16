root_url = 'https://kotoha-server.herokuapp.com'
# root_url = 'http://kotoha-server.dev'

atwhoOptions =
  at: "/"
  tpl: '<li class="kotoha" data-value="${text}"><img src="${icon}" /> ${text}</li>'
  limit: 80
  display_timeout: 400
  search_key: null
  callbacks:
    matcher: (flag, subtext) ->
      regexp = new XRegExp("(\\s+|^)" + flag + "([\\p{L}_-]+)$", "gi")
      match = regexp.exec(subtext)
      return null  unless match and match.length >= 2
      match[2]

    remote_filter: (query, callback) ->
      return unless query || query.length < 4
      kind = query[0].toLowerCase()
      query = query.slice(1)
      if kind is "k"
        if query
          $.getJSON root_url + "/api/phrases.json",
            text: query
          ,(data) ->
            phrases = $.map data, (phrase) ->
              {
                'id': phrase.id
                'text': phrase.text
                'icon': chrome.extension.getURL('../images/leaf.png')
              }
            callback phrases
      else if kind is "t"
        if query
          $.getJSON root_url + "/api/phrases.json",
            tag: query
          ,(data) ->
            phrases = $.map data, (phrase) ->
              {
                'id': phrase.id
                'text': phrase.text
                'icon': chrome.extension.getURL('../images/tag.png')
              }
            callback phrases

$(document).on 'focusin', (ev) ->
  $this = $ ev.target
  return unless $this.is 'textarea'
  $this.atwho atwhoOptions
