// initate p5, build canvas
function setup() {
	noStroke()
	createCanvas(windowWidth, windowHeight)
}

// resize canvas when window is resized
function windowResized() {
	resizeCanvas(windowWidth, windowHeight)
}

// paint on the canvas
function draw() {
	// If clicking, hide cursor
	if (mouseIsPressed)
		noCursor()
	else
		cursor(HAND)
}

// initates the print function on tap or click
function touchMoved() {
	paintRandomShape()
	return false
}

// generates random shape
function paintRandomShape() {
	// initate randomness
	var randColor = [Math.floor(Math.random() * 255) + 1, Math.floor(Math.random() * 255) + 1, Math.floor(Math.random() * 255) + 1],
		randShape = Math.floor(Math.random() *   2) + 1,
		randSize  = Math.floor(Math.random() *  80) + 1

	// fill the shape with random color
	fill(randColor[0], randColor[1], randColor[2])

	// draw 80px or smaller circle or square at mouse coords
	if (randShape == 1)
		ellipse(mouseX, mouseY, randSize, randSize)
	else
		rect((mouseX - (randSize / 2)), (mouseY - (randSize / 2)), randSize, randSize)
}
