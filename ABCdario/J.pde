ArrayList <J> letraJ;
ArrayList <J2> letraJ2;

class J
{  
  float w;
  float h;
  Body b;
  
  J(float x_, float y_, float w_, float h_, PImage J_)
  {
    w = w_;
    h = h_;
    J = J_;
    
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
    image(J,0,0,w,h);
    popMatrix();
  }
}

class J2
{  
  float w;
  float h;
  Body b;
  
  J2(float x_, float y_, float w_, float h_, PImage j_)
  {
    w = w_;
    h = h_;
    j = j_;
    
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
    image(j,0,0,w,h);
    popMatrix();
  }
}
