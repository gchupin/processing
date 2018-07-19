// ------------------------------------------
import gifAnimation.*;
import java.util.Calendar;

// ------------------------------------------
GifMaker gifExport;

// ------------------------------------------
int nbFrames = 120;
int iFrame   = 0;
boolean bExport = false;

// ------------------------------------------
void setup()
{
  size(500, 500, P3D);
}

// ------------------------------------------
void draw()
{
  background(255);
  if (bExport)
  {
    render( float(iFrame) / float(nbFrames) );
    export();
  } else
  {
    render( (frameCount % nbFrames) / float(nbFrames) );
  }
}

// ------------------------------------------
void export()
{
    if (iFrame < nbFrames) 
    {
      gifExport.setDelay(20);
      gifExport.addFrame();
      iFrame++;
    }
    if (iFrame == nbFrames)
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
    bExport = true;
    gifExport = null;
    iFrame = 0;
    gifExport = new GifMaker(this, "export_"+timestamp()+".gif");
    gifExport.setRepeat(0);
  }
}

// ------------------------------------------
// timestamp
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
