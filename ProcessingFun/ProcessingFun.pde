import processing.pdf.*;
// Gestionnaire de démarrage
void setup ()
{
    background (255, 255, 0);

  size (500, 500);
  /*
  Les PDF
  beginRecord (PDF, "dessin.pdf"); // démarre l'enregistrement PDF
  endRecord ();
  
  Les images 
  saveFrame ("dessing.png");
  
  Faire des formes plus complexes
  beginShape ();
  vertex (0, 250); // c'est un point.
  vertex (100, 300);
  vertex (0, 500);
  endShape ();
  */
}

int lastDraw = 0;
int tempo = 250;
// Gestionnaire de dessin
void draw ()
{
  background (255);
  oscilation ();
  if (mousePressed)
  { 
    if (millis ()  > lastDraw + tempo)
    {
  illuminati ();
  swagg (8, - 69); // Fait un chapeau bite pour le triangle illuminati.
  parts ();
  lastDraw = millis ();
    }
  }

  //line (mouseX,mouseY,100,50);
  //ellipse (mouseX, mouseY, 50,50);
}

// Gestionnaire d'input clavier
void keyPressed ()
{
  background (255, 255, 0);   
}

// Fonctions perso

void oscilation ()
{
 /* frameCount = nombre de fois que draw est exécuter. Sinus important pour faire des gif
 car sinuosidale(entre 1 et -1) donc facile de faire un truc répétable. 
 Radian va moins vite que sans. multiplier frame count accélére l'oscilation.
 On peut aussi faire un effet de déphasage si on les mets sur des parties différente de l'oscilation sinuosidale.
*/
 noStroke ();
 fill (255, 0, 0, 50); // Le dernier paramètres est la transparence.
 ellipse (250, 250, 400*sin(radians(frameCount)), 200*sin(radians(2*frameCount)));
  fill (0, 255, 0, 50);
 ellipse (250, 150, 400*sin(radians(frameCount)), 200*sin(radians(3*frameCount)));
  fill (0, 0, 255, 50);
 ellipse (250, 350, 400*sin(radians(frameCount)), 200*sin(radians(3*frameCount)));
 }

// Dessine une bite rouge.
void swagg (int x, int y)
{
  fill (255,0,0);
  stroke (0, 255, 0);
  ellipse (mouseX + x, mouseY + y, 50, 50);
  ellipse (mouseX + 50 + x, mouseY + y, 50, 50);  
  ellipse (mouseX + 25 + x,mouseY - 100 + y, 50, 200);
}

//Dessinne un triangle illuminati
void illuminati ()
{
  stroke (255, 0, 0);
  fill (255, 116, 216);
  triangle(mouseX, mouseY, mouseX + 33, mouseY - 65, mouseX + 66, mouseY);
  fill (0, 100, 255);
  ellipse (mouseX + 33, mouseY - 20, 45, 18);
  fill (25, 255, 50);
  ellipse (mouseX + 33, mouseY - 20, 10, 10);
  stroke (0);
  fill (0);
  ellipse (mouseX + 33, mouseY - 20, 2, 2);
}

// Pour dessiner bras et jambe du triangle illuminati.
void parts ()
{
  fill (0);
  stroke (0);
  line (mouseX + 9, mouseY - 20, mouseX - 10, mouseY - 20);
  line (mouseX + 57, mouseY - 20, mouseX + 76, mouseY - 20);
  line (mouseX + 20, mouseY, mouseX + 10, mouseY + 19);
  line (mouseX + 42, mouseY, mouseX + 52, mouseY + 19);
  
}
