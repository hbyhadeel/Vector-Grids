int gridCount, gridArea;
PVector[] points;
float x, y, margin;

void setup() {
  size(500, 500);
  background(255, 200, 0);

  strokeWeight(5);
  stroke(255, 50);
  noFill();

  gridCount = 30;
  gridArea = gridCount * gridCount;
  points = new PVector[gridArea];
  margin = 50;
  x = 0;
  y = 0;

  for (int i = 0; i < points.length; i++) {
    float posx = x * (width-margin*2)/(gridCount-1) + margin;
    float posy = y * (height-margin*2)/(gridCount-1) + margin;
    points[i] = new PVector(posx, posy);
    x++;
    if ((i+1) % gridCount == 0) {
      y ++;
      x = 0;
    }
  }

  for (int i = 0; i < points.length; i++) {
    point(points[i].x, points[i].y);
  }

  for (int i = 0; i < 10; i++) {
    stroke(255, 100);
    line(points[int(random(points.length))].x, points[int(random(points.length))].y, 
      points[int(random(points.length))].x, points[int(random(points.length))].y);
  }
}

void draw() {
}