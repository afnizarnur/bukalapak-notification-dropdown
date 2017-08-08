# Import file "Notification"
sketch = Framer.Importer.load("imported/Notification@1x", scale: 1)
# Import file "Notification"
sketch = Framer.Importer.load("imported/Notification@1.5x", scale: 1)

document.body.style.cursor = "auto"

Screen.backgroundColor = "#F5F5F5"

sketch.Dropdown.opacity = 0

sketch.oval.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"
	
# overlay = new Layer
# 	width: Screen.width
# 	height: Screen.height
# 	backgroundColor: "000"
# 	opacity: .5
# 	parent: sketch.Notifikasi_Dropdown_with_unsubscribe_Iteration_2
# 	z: -200


sketch.oval.onClick (event, layer) ->
	sketch.Dropdown.opacity = 1
		
	

sketch.oval.onMouseOut (event, layer) ->
	document.body.style.cursor = "auto"	

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
	sketch.Stop_Notif_Ini_Normal.visible = false
	sketch.Message.visible = true
	sketch.Message.y = 285
	if sketch.Message.y != 305
		sketch.Message.animate
			opacity: 1
			options:
				time: .2
				curve: Bezier.easeIn
		sketch.Message.animate
			y: sketch.Message.y + 20
			options:
				time: .2
				curve: Bezier.easeIn
		sketch.$4.animate
			y: sketch.$4.y + 45
			options:
				time: .2
				curve: Bezier.easeOut
		sketch.$5.animate
			y: sketch.$5.y + 45
			options:
				time: .2
				curve: Bezier.easeOut

	sketch.Message.onMouseOver (event, layer) ->
		document.body.style.cursor = "pointer"
		
	sketch.Message.onMouseOut (event, layer) ->
		document.body.style.cursor = "auto"	
		
	sketch.Message.onClick (event, layer) ->
		sketch.Stop_Notif_Ini_Normal.visible = true
		Utils.delay .2, ->
			sketch.Message.visible = false

		sketch.Message.animate
			opacity: 0
			options:
				time: .2
				curve: Bezier.easeOut
		sketch.Message.animate
			y: sketch.Message.y - 20
			options:
				time: .2
				curve: Bezier.easeOut
				
		sketch.$4.animate
			y: sketch.$4.y - 45
			options:
				time: .2
				curve: Bezier.easeOut
		sketch.$5.animate
			y: sketch.$5.y - 45
			options:
				time: .2
				curve: Bezier.easeOut
