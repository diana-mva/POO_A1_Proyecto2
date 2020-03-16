ArrayList <Q> letraQ;
ArrayList <Q2> letraQ2;

class Q
{  
  float w;
  float h;
  Body b;
  
  Q(float x_, float y_, float w_, float h_, PImage Q_)
  {
    w = w_;
    h = h_;
    Q = Q_;
    
    BodyDef bd = new BodyDef();
    Vec2 posicionInicial = new Vec2(x_,y_);
    Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);
    bd.position.set(posicionEnEscalaBox2d);
    
    bd.type = BodyType.DYNAMIC;
    
    b = mundo.createBody(bd);
    b.setLinearVelocity(new Vec2(random(-5,5),random(10)));
    b.setAngularVelocity(random(-3,3));
    
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
    Vec2 posicion = mundo.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    pushMatrix();
    translate(posicion.x,posicion.y);
    rotate(-angulo);
    imageMode(CENTER);
    image(Q,0,0,w,h);
    popMatrix();
  }
}

class Q2
{  
  float w;
  float h;
  Body b;
  
  Q2(float x_, float y_, float w_, float h_, PImage q_)
  {
    w = w_;
    h = h_;
    q = q_;
    
    BodyDef bd = new BodyDef();
    Vec2 posicionInicial = new Vec2(x_,y_);
    Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);
    bd.position.set(posicionEnEscalaBox2d);
    
    bd.type = BodyType.DYNAMIC;
    
    b = mundo.createBody(bd);
    b.setLinearVelocity(new Vec2(random(-5,5),random(10)));
    b.setAngularVelocity(random(-3,3));
    
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
    Vec2 posicion = mundo.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    pushMatrix();
    translate(posicion.x,posicion.y);
    rotate(-angulo);
    imageMode(CENTER);
    image(q,0,0,w,h);
    popMatrix();
  }
}
