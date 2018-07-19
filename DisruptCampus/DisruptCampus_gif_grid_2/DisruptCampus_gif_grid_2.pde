// ------------------------------------------
import gifAnimation.*;

// ------------------------------------------
GifMaker gifExport;

// ------------------------------------------
int nbFrames = 120;
int iFrame   = 0;
boolean bExport = false;

// ------------------------------------------
void setup()
{
  size(500,500);
}

// ------------------------------------------
void draw()
{
  background(255);
  if (bExport)
  {
    render( float(iFrame) / float(nbFrames) );
    export();
  }
  else
  {
    render( (frameCount % nbFrames) / float(nbFrames) );
  }
}
// ------------------------------------------
void export()
{
  if(iFrame < nbFrames) 
  {
    gifExport.setDelay(20);
    gifExport.addFrame();
    iFrame++;
  }
  else
  {
    gifExport.finish();    
    bExport = false;
    gifExport = null;
  }
}

// ------------------------------------------
void keyPressed()
{
  if (key == ' ' && !bExport)
  {
    gifExport = new GifMaker(this, "export.gif");
    gifExport.setRepeat(0); // En boucle
    bExport = true;
    iFrame = 0;
  }
}
