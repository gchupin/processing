// ------------------------------------------
void render(float t)
{
  background(0);
  noStroke();
  fill(255);
  blendMode(EXCLUSION);
  translate(250,250);
  // rotate( t * TWO_PI );
  ellipse(-100,50,250,250);
  ellipse(100,50,250,250);
  ellipse(0,-100,250,250);
}
