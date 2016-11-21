function draw_b() {
  var b_canvas = document.getElementById("b");
  var b_context = b_canvas.getContext("2d");

  var my_gradient = b_context.createLinearGradient(150, 25, 250, 100);
  	my_gradient.addColorStop(0, "black");
  	my_gradient.addColorStop(0.25, "green");
	my_gradient.addColorStop(0.5, "red");
	my_gradient.addColorStop(0.75, "yellow");
	my_gradient.addColorStop(1, "white");
	b_context.fillStyle = my_gradient;
  b_context.fillRect(150, 25, 250, 100);
  b_context.clearRect(170,25,40,40);

  for (var x = 0.5; x < 500; x += 5) {
  b_context.moveTo(x, 0);
  b_context.lineTo(x, 375);
}

for (var y = 0.5; y < 375; y += 5) {
  b_context.moveTo(0, y);
  b_context.lineTo(500, y);
}

b_context.strokeStyle = "#eee";
b_context.stroke();

b_context.beginPath();
 b_context.moveTo(20.5, 20.5);
 b_context.lineTo(280.5, 20.5);

 b_context.moveTo(280.5, 20.5);
 b_context.lineTo(280.5-5, 20.5-5);
 b_context.moveTo(280.5, 20.5);
 b_context.lineTo(280.5-5, 20.5+5);

 b_context.moveTo(20.5, 20.5);
 b_context.lineTo(20.5, 200.5);
 b_context.moveTo(20.5, 200.5);
 b_context.lineTo(20.5-5, 200.5-5);
 b_context.moveTo(20.5, 200.5);
 b_context.lineTo(20.5+5, 200.5-5);
 b_context.strokeStyle = "#363446";
 b_context.stroke();

 	b_context.font = "bold 12px sans-serif";
	b_context.fillText("x", 280.5+2, 20.5+2.5);
	b_context.fillText("y", 20.5-10, 200.5+7.5);
	b_context.fillText("0", 20.5-10, 20.5-2.5);

}
// GRADIENTS
function draw_d() {
	var d_canvas = document.getElementById("d");
  	var d_context = d_canvas.getContext("2d");
  	var my_gradient = d_context.createRadialGradient(150,112.5,1,150,112.5,150);
  	my_gradient.addColorStop(0, "black");
  	my_gradient.addColorStop(0.2, "yellow");
  	my_gradient.addColorStop(0.4, "red");
  	my_gradient.addColorStop(0.6, "green");
  	my_gradient.addColorStop(0.8, "blue");
	my_gradient.addColorStop(1, "white");
	d_context.fillStyle = my_gradient;
	d_context.fillRect(0, 0, 300, 225);
}

function draw_e() {
	var e_canvas = document.getElementById("e");
	var e_context = e_canvas.getContext("2d");
	var cat = new Image();
	cat.src="https://mdn.mozillademos.org/files/5397/rhino.jpg";
	cat.onload=function() {
		e_context.drawImage(cat,0,0);
	};

}

function draw_c() {
	var c_canvas = document.getElementById("e");
	var c_context = c_canvas.getContext("2d");
	var cat = new Image();
	cat.src="https://mdn.mozillademos.org/files/5397/rhino.jpg";
	cat.onload=function() {
		for(var x=0; x <300; x+=50)
		c_context.drawImage(cat,x,x,50,50);
	};

}