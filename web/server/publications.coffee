
PUB_NODES_LIMIT = 50

Meteor.publish "queryMedia", (query) ->
  if not query
    query = {}
  
  Media.find query, {limit:PUB_NODES_LIMIT}
  