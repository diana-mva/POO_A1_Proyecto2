ArrayList <F> letraF;
ArrayList <F2> letraF2;

class F{
  
  float w;
  float h;
  Body b;
  
  F(float x_, float y_, float w_, float h_, PImage F_){
    w = w_;
    h = h_;
    F = F_;
    BodyDef bd = new BodyDef();
    Vec2 posicionInicial = new Vec2(x_,y_);
    Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);
    bd.position.set(posicionEnEscalaBox2d);
    
    bd.type = BodyType.DYNAMIC;//dynamic, static / kinematic
    
    b = mundo.createBody(bd);
    b.setLinearVelocity(new Vec2(random(-5,5),random(10)));
    b.setAngularVelocity(random(-3,3));
    
    // Forma
    PolygonShape ps = new PolygonShape();
    float ancho = mundo.scalarPixelsToWorld(w_);
    float alto = mundo.scalarPixelsToWorld(h_);
    ps.setAsBox(ancho/2,alto/2);
    
    //propiedades
    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    // fricción, restitución, densidad
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
    image(F,0,0,w,h);
    popMatrix();
  }
}

class F2{
  
  float w;
  float h;
  Body b;
  
  F2(float x_, float y_, float w_, float h_, PImage f_){
    w = w_;
    h = h_;
    f = f_;
    BodyDef bd = new BodyDef();
    Vec2 posicionInicial = new Vec2(x_,y_);
    Vec2 posicionEnEscalaBox2d = mundo.coordPixelsToWorld(posicionInicial);
    bd.position.set(posicionEnEscalaBox2d);
    
    bd.type = BodyType.DYNAMIC;//dynamic, static / kinematic
    
    b = mundo.createBody(bd);
    b.setLinearVelocity(new Vec2(random(-5,5),random(10)));
    b.setAngularVelocity(random(-3,3));
    
    // Forma
    PolygonShape ps = new PolygonShape();
    float ancho = mundo.scalarPixelsToWorld(w_);
    float alto = mundo.scalarPixelsToWorld(h_);
    ps.setAsBox(ancho/2,alto/2);
    
    //propiedades
    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    // fricción, restitución, densidad
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
    image(f,0,0,w,h);
    popMatrix();
  }
}
