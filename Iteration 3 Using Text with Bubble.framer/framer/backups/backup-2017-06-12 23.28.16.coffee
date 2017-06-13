# Import file "Notification"
sketch = Framer.Importer.load("imported/Notification@1.5x", scale: 1)

document.body.style.cursor = "auto"

Screen.backgroundColor = "#F5F5F5"

sketch.Stop_Notif_Ini_Normal.opacity = 0
sketch.Stop_Notif_Ini_Default.visible = true
sketch.Stop_Notif_Ini_Default.opacity = 0

sketch.Message.y = sketch.Message.y - 20
sketch.Message.opacity = 0

sketch.$4.y = sketch.$4.y - 45
sketch.$5.y = sketch.$5.y - 45

sketch.$3.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"
	sketch.Stop_Notif_Ini_Normal.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease

sketch.$3.onMouseOut (event, layer) ->
	sketch.Stop_Notif_Ini_Default.animate
		opacity: 0
		options:
			time: .1
			curve: Bezier.ease
	document.body.style.cursor = "auto"
	sketch.Stop_Notif_Ini_Normal.animate
		opacity: 0
		options:
			time: .1
			curve: Bezier.ease

sketch.Stop_Notif_Ini_Normal.onMouseOver (event, layer) ->
	sketch.Stop_Notif_Ini_Default.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease

sketch.Stop_Notif_Ini_Normal.onClick (event, layer) ->
	sketch.Message.visible = true
	sketch.Message.opacity = 1
	if sketch.Message.y is not 305
		sketch.Message.animate
			y: sketch.Message.y + 20
			options:
				time: 1
				curve: Bezier.ease
	
	sketch.Stop_Notif_Ini_Normal.visible = false

	sketch.Message.onMouseOver (event, layer) ->
		document.body.style.cursor = "pointer"
		
	sketch.Message.onMouseOut (event, layer) ->
		document.body.style.cursor = "auto"	
		
	sketch.Message.onClick (event, layer) ->
		sketch.Stop_Notif_Ini_Normal.visible = true
		sketch.Message.visible = false
		sketch.Message.opacity = 0
		sketch.Message.y = sketch.Message.y - 20
		
# 	sketch.Stop_Notif_Ini_Normal.opacity = 0
# 	sketch.Stop_Notif_Ini_Default.opacity = 0
	
# sketch.Message.onClick (event, layer) ->
# 	sketch.Message.y = sketch.Message.y - 20	
# # 	sketch.$4.y = sketch.$4.y - 45
# # 	sketch.$5.y = sketch.$5.y - 45
# 


