// ------------------------------------------
int r = 0;
int g = 0;
int b = 0;
void render(float t)
{
    translate (500,500);
  int j = 42;
  int r= 0,g = 0,b = 0;
  int p = 0;
  for (float i = 50; i < 450; i+=1)
  {

   r += j;
   if (r > 255)
   {
     r = 0;
     g+= j;
   }
  if (g > 255)
  {
    g = 0;
    b += j;
  }
     println (r, g, b);
   // noFill ();
  noStroke();
    fill(r,g,b);
    rotate (radians(sin(i)+t*6.28));
    rect (i, 250, sin(t*6.28+radians(i))*100, sin(radians(i)+t*6.28)*100);
    ellipse (i, 250, sin(t*6.28+radians(i))*100, sin(radians(i)+t*6.28)*100);
  }
  /*translate (250, 250); // s'effectue sur l'origine (qui est en hauta gauche de base mais se retrouve au millieux après.
  rotate (radians(t*(-90)));
  rectMode(CENTER);
  rect(0, 0, sin(t*6.28)*400, sin(t*6.28)*400); // 6.28 = 2*PI (une sinuoside complet = 2PI (en radian sinon c'est 360°))
    rotate (radians(t*180));
  rect(0, 0, sin(t*6.28)*250, sin(t*6.28)*250);
  /*rect(0, 0, t*400, t*400);
  rotate (radians(t*180));
  rect(0, 0, t*250, t*250);*/
}
