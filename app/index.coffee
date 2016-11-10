# console.log window.screen.height
# console.log window.screen.width
container = document.getElementById "container"
# video = document.getElementById "video"
# video.addEventListener "loadedmetadata", ->
#   console.log @videoWidth, @videoHeight
#   console.log @offsetWidth, @offsetHeight
# console.log video.offsetWidth
redraw = (padding)->
  if padding is undefined
    # screenWidth = document.body.clientWidth
    # screenHeight = document.body.clientHeight
    screenWidth = window.screen.width
    screenHeight = window.screen.height
    if screenHeight > screenWidth
      padding = true
    else
      padding = false
  if padding
    container.setAttribute "style", "padding-top: 30vh"
    document.body.setAttribute "style", ""
    document.getElementById("apply").setAttribute("style", "")
  else
    container.setAttribute "style", "padding-top: 0"
    document.body.setAttribute "style", "width: 80%;margin:auto"
    document.getElementById("apply").setAttribute("style", "width: 80%")
redraw()
window.onorientationchange = ->
  if window.orientation is 0
    redraw true
  else
    redraw false
