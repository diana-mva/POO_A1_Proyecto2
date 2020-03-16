class Limite
{
  float w;
  float h;
  float x;
  float y;
  Body b;
  
  Limite(float x_, float y_, float w_, float h_)
  {
    w = w_;
    h = h_;
    x = x_;
    y = y_;
    
    BodyDef bd = new BodyDef();
    Vec2 posicionInicial = new Vec2(x_,y_);
    Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);
    bd.position.set(posicionEnEscalaBox2d);
    
    bd.type = BodyType.STATIC;
    
    b = mundo.createBody(bd);
    
    // Forma
    PolygonShape ps = new PolygonShape();
    float ancho = mundo.scalarPixelsToWorld(w_);
    float alto = mundo.scalarPixelsToWorld(h_);
    ps.setAsBox(ancho/2,alto/2);
    
    //Propiedades    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    fd.friction = .1;
    fd.restitution = .1;
    fd.density = .1;    
    b.createFixture(fd);
  }
  
  void display()
  {    
    pushMatrix();
    translate(x,y);
    rectMode(CENTER);
    noStroke();
    fill(255);
    rect(0,0,w,h);
    popMatrix();
  }
}
