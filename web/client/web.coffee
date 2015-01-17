
Template.index.helpers
  settings: ->
    playBtnField =
      key: "youtubeVideoId"
      label: "Play Btn"
      tmpl: Template.indexPagePlayBtn

    res = 
      collection: Media
      rowsPerPage: 10
      showFilter: true
      fields: [playBtnField, "title", "description"]


# Template.index.rendered = ->
#   $("iframe#ytplayer").hide()


Template.indexPagePlayBtn.events
  "click a.indexPagePlayBtn": (e,t) ->
    e.stopPropagation()
    youtubeVideoId = $(e.target).attr "youtubeVideoId"
    playUrl = "http://www.youtube.com/embed/" + youtubeVideoId #+"?autoplay=1"
    $("iframe#ytplayer").attr "src", playUrl
    # $("iframe#ytplayer").show()