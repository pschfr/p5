# initate p5, build canvas
setup = () ->
	noStroke()
	createCanvas(windowWidth, windowHeight)

# resize canvas when window is resized
windowResized = () ->
	resizeCanvas(windowWidth, windowHeight)

# paint on the canvas
draw = () ->
	# If clicking, hide cursor
	if (mouseIsPressed)
		noCursor()
	else
		cursor()

# initates the print function on tap or click
touchMoved = () ->
	paintRandomShape()

# generates random shape
paintRandomShape = () ->
	# initate randomness
	randColor = [Math.floor(Math.random() * 255) + 1, Math.floor(Math.random() * 255) + 1, Math.floor(Math.random() * 255) + 1]
	randShape = Math.floor(Math.random() *   2) + 1
	randSize  = Math.floor(Math.random() *  80) + 1

	# fill the shape with random color
	fill(randColor[0], randColor[1], randColor[2])

	# draw 80px or smaller circle or square at mouse coords
	if (randShape == 1)
		ellipse(mouseX, mouseY, randSize, randSize)
	else
		rect((mouseX - (randSize / 2)), (mouseY - (randSize / 2)), randSize, randSize)
