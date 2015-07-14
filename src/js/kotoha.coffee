atwhoOptions =
  at: "!"
  tpl: '<li class="kotoha" data-value="![${alt}](${imageUrl})"><img src="${imagePreviewUrl}" /></li>'
  limit: 80
  display_timeout: 1000
  search_key: null
  callbacks:
    matcher: (flag, subtext) ->
      regexp = new XRegExp("(\\s+|^)" + flag + "([\\p{L}_-]+)$", "gi")
      match = regexp.exec(subtext)
      return null  unless match and match.length >= 2
      match[2]

    remote_filter: (query, callback) ->
      return  unless query
      kind = query[0].toLowerCase()
      query = query.slice(1)
      if kind is "l"
        task1 = $.getJSON("https://d1zktzrq1775k6.cloudfront.net/g?" + Math.random()).then()
        task2 = $.getJSON("https://d1zktzrq1775k6.cloudfront.net/g?" + Math.random()).then()
        task3 = $.getJSON("https://d1zktzrq1775k6.cloudfront.net/g?" + Math.random()).then()
        $.when(task1, task2, task3).then (a, b, c) ->
          images = _.map([
            a[0]
            b[0]
            c[0]
          ], (data) ->
            name:            data.actualImageUrl
            imageUrl:        data.actualImageUrl
            imagePreviewUrl: data.actualImageUrl
            alt: "LGTM"
          )
          callback images

$(document).on 'focusin', (ev) ->
  $this = $ ev.target
  return unless $this.is 'textarea'
  $this.atwho atwhoOptions

$(document).on 'keyup.atwhoInner', (ev) ->
  setTimeout ->
    $currentItem = $('.atwho-view .cur')
    return if $currentItem.length == 0

    $parent = $($currentItem.parents('.atwho-view')[0])
    offset = Math.floor($currentItem.offset().top - $parent.offset().top) - 1

    if (offset < 0) || (offset > 250)
      setTimeout ->
        offset = Math.floor($currentItem.offset().top - $parent.offset().top) - 1
        row    = Math.floor(offset / 150)
        $parent.scrollTop($parent.scrollTop() + row * 150 - 75)
      , 100
