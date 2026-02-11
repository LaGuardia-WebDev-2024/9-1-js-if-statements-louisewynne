//setup Function - will automatically run Once
setup = function(){
    size(400, 400); 
    frameRate(30); 
}

var y = 0;  // y position of the ball
var x = 0;  // x position of the ball
var red = 0;  // red on rgb of the ball
var blue = 0;  // blue on rgb of the ball
var speed = 2;  // how far the ball moves every time

//draw Function - will run repeatedly
draw = function() {
    background(255, 255, 255, 150);

    fill(66, 66, 66);
    ellipse(200, y, 50, 50);

     fill(red, 0, blue);
    ellipse(x, 200, 50, 50);

    if (y > 375){
        speed = -2;
    }

    if (y < 25){
        speed = 2;
    }

    if (x > 374){
        red = 255;
    }

    if (x < 25){
        blue = 255;
        red = 0;
    }

    y = y + speed;  // move the ball

    x = x + speed;  // move the ball
};