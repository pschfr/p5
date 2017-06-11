# initiate globals
SHAPE = Math.floor(Math.random() * 6) + 1

# initate p5, build canvas
setup = () ->
	createCanvas(windowWidth, windowHeight, WEBGL)

# resize canvas when window is resized
windowResized = () ->
	resizeCanvas(windowWidth, windowHeight, WEBGL)

# generate new shape on click
mouseClicked = () ->
	SHAPE = Math.floor(Math.random() * 6) + 1
	draw()


draw = () ->
	# rotate the cube
	rotateX(frameCount * 0.0075)
	rotateY(frameCount * 0.0075)
	rotateZ(frameCount * 0.0075)

	# draw the cube, sphere, cylinder, cone, ellipsoid, or torus
	switch (SHAPE)
		when 1 then box(windowWidth / 4, windowWidth / 4, windowWidth / 4)
		when 2 then sphere(windowHeight / 4)
		when 3 then cylinder(windowHeight / 4, windowHeight / 4)
		when 4 then cone(windowHeight / 3, windowHeight / 2)
		when 5 then ellipsoid(windowHeight / 4, windowHeight / 6, windowHeight / 8)
		when 6 then torus(windowHeight / 4, windowHeight / 8)
