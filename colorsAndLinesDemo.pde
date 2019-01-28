float[] positions = new float[12];
void setup() {
  size(800, 800);
  colorMode(HSB, 100);
  for (int i = 0; i < positions.length; i++) {
    positions[i] = random(0, width);
  }
  println(positions);
}

void draw() {
  movePositions();
  background(0);
  drawPositions();
}
void movePositions() {
  positions[0] = mouseX + mouseY;
  for (int i = 1; i < positions.length; i++) {
    float distanceToMove = positions[i-1] - positions[i];
    if (positions[i] < positions[i-1]) {
      positions[i] += distanceToMove / 10;
    } else {
      positions[i] += distanceToMove / 20;
      
    }
  }
}

void drawPositions() {
  strokeWeight(5.0);
  for (int i = 0; i < positions.length; i++) {
    line(positions[i], height / 2, 0, positions[i]);
    stroke(100/positions.length * i, 100, 100);
  }
}
