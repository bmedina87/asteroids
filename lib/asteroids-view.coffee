{View} = require 'atom'

module.exports =
class AsteroidsView extends View
  @content: ->
    @div class: 'asteroids overlay from-top'

  initialize: (serializeState) ->
    atom.workspaceView.command "asteroids:blastoff", => @blastoff()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  play: ->
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
