sketch = Framer.Importer.load("imported/Notification@1.5x", scale: 1)
# Use desktop cursor
document.body.style.cursor = "auto"

Screen.backgroundColor = "#F5F5F5"

sketch.Stop_Notif_Ini_Hover.visible = true
sketch.Stop_Notif_Ini_Normal.opacity = 0
sketch.Stop_Notif_Ini_Hover.opacity = 0

sketch.$3.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"
	sketch.Stop_Notif_Ini_Normal.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease
			
sketch.$3.onMouseOut (event, layer) ->
	document.body.style.cursor = "auto"
	sketch.Stop_Notif_Ini_Normal.animate
		opacity: 0
		options:
			time: .1
			curve: Bezier.ease

wrap_link = new Layer 
	parent: sketch.$3
	width: 71
	height: 18
	x: sketch.Stop_Notif_Ini_Hover.x
	y: sketch.Stop_Notif_Ini_Hover.y
	backgroundColor: "transparent"

wrap_link.onMouseOver (event, layer) ->
# 	sketch.Stop_Notif_Ini_Hover.visible = true
	document.body.style.cursor = "pointer"
	sketch.Stop_Notif_Ini_Hover.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease
	
wrap_link.onMouseOut (event, layer) ->
	sketch.Stop_Notif_Ini_Normal.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease
# 	sketch.Stop_Notif_Ini_Hover.visible = false
	sketch.Stop_Notif_Ini_Hover.animate
		opacity: 0
		options:
			time: .1
			curve: Bezier.ease

sketch.Overlay.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"

wrap_link.onClick (event, layer) ->
# 	document.body.style.cursor = "pointer"
	sketch.Overlay.visible = true
	sketch.Overlay.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease
	sketch.Overlay.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease

sketch.Overlay.onMouseOut (event, layer) ->
	document.body.style.cursor = "auto"

sketch.Text.onClick (event, layer) ->
	document.body.style.cursor = "pointer"
	sketch.Stop_Notif_Ini_Normal.opacity = 1
	Utils.delay .1, ->
		sketch.Overlay.visible = false
	sketch.Overlay.animate
		opacity: 0
		options:
			time: .1
			curve: Bezier.ease