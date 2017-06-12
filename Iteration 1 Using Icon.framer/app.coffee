# Import file "Notification"
sketch = Framer.Importer.load("imported/Notification@1.5x", scale: 1)
# Set Screen background
Screen.backgroundColor = "#F5F5F5"
document.body.style.cursor = "auto"
sketch.Close.opacity = 0
sketch.Overlay.opacity = 0
sketch.Overlay.visible = false
sketch.Tooltips.visible = false

sketch.$3.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"
	sketch.Close.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease

sketch.$3.onMouseOut (event, layer) ->
	document.body.style.cursor = "auto"
# 	sketch.Close.opacity = 0
# 	closeCopy.opacity = 1
# # 	sketch.Close.animate
# # 		opacity: 0
# # 		options:
# # 			time: .1
# # 			curve: Bezier.ease
			
sketch.Text.onClick (event, layer) ->
	Utils.delay .3, ->
		sketch.Overlay.visible = false
	sketch.Overlay.animate
		opacity: 0
		options:
			time: .1
			curve: Bezier.ease
			
sketch.Text.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"

sketch.Close.onMouseOut (event, layer) ->
	sketch.Tooltips.visible = false
	sketch.Tooltips.opacity = 1
			
sketch.Close.onMouseOver (event, layer) ->
	document.body.style.cursor = "pointer"
	sketch.Tooltips.visible = true

sketch.Close.onClick (event, layer) ->
	sketch.Tooltips.opacity = 0
	sketch.Overlay.visible = true
	sketch.Overlay.animate
		opacity: 1
		options:
			time: .1
			curve: Bezier.ease

