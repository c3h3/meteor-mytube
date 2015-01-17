
Template.index.helpers
  settings: ->
    res = 
      collection: Media
      rowsPerPage: 10
      showFilter: true
      fields: ["_id", "title", "description"]
