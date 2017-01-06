// initate p5, build canvas
function setup() {
	noStroke()
	createCanvas(window.innerWidth, window.innerHeight)
}

// paint on the canvas
function draw() {
	var randColor = [Math.floor(Math.random() * 255) + 1, Math.floor(Math.random() * 255) + 1, Math.floor(Math.random() * 255) + 1],
		randShape = Math.floor(Math.random() *   2) + 1,
		randSize  = Math.floor(Math.random() *  80) + 1

	// If clicking, fill with random color
	if (mouseIsPressed) {
		fill(randColor[0], randColor[1], randColor[2])

		// draw 80px or smaller circle or square at mouse coords
		if (randShape == 1)
			ellipse(mouseX, mouseY, randSize, randSize)
		else
			rect((mouseX - (randSize / 2)), (mouseY - (randSize / 2)), randSize, randSize)
	}
}
