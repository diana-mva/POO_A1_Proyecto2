import shiffman.box2d.*; 
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import processing.sound.*;

Box2DProcessing mundo;

Limite suelo, pared, pared2;
Pantallas Inicio, Instrucciones, Accion;
PImage A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z;
PImage a,B2,c,d,e,f,g,H2,i,j,k,l,m,n,o,p,q,r,s,t,u,v,W2,X2,Y2,z;
int screen=1;
PFont font;

void setup(){
  size(512,512);
  Audio();
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
  Inicio = new Pantallas(0);
  Instrucciones = new Pantallas(0);
  Accion = new Pantallas(0);
  letraA = new ArrayList <A>();  letraA2 = new ArrayList <A2>();
  letraB = new ArrayList <B>();  letraB2 = new ArrayList <B2>();
  letraC = new ArrayList <C>();  letraC2 = new ArrayList <C2>();
  letraD = new ArrayList <D>();  letraD2 = new ArrayList <D2>();  
  letraE = new ArrayList <E>();  letraE2 = new ArrayList <E2>(); 
  letraF = new ArrayList <F>();  letraF2 = new ArrayList <F2>(); 
  letraG = new ArrayList <G>();  letraG2 = new ArrayList <G2>(); 
  letraH = new ArrayList <H>();  letraH2 = new ArrayList <H2>(); 
  letraI = new ArrayList <I>();  letraI2 = new ArrayList <I2>();
  letraJ = new ArrayList <J>();  letraJ2 = new ArrayList <J2>();
  letraK = new ArrayList <K>();  letraK2 = new ArrayList <K2>();
  letraL = new ArrayList <L>();  letraL2 = new ArrayList <L2>();
  letraM = new ArrayList <M>();  letraM2 = new ArrayList <M2>();
  letraN = new ArrayList <N>();  letraN2 = new ArrayList <N2>();
  letraO = new ArrayList <O>();  letraO2 = new ArrayList <O2>();
  letraP = new ArrayList <P>();  letraP2 = new ArrayList <P2>();
  letraQ = new ArrayList <Q>();  letraQ2 = new ArrayList <Q2>();
  letraR = new ArrayList <R>();  letraR2 = new ArrayList <R2>();
  letraS = new ArrayList <S>();  letraS2 = new ArrayList <S2>();
  letraT = new ArrayList <T>();  letraT2 = new ArrayList <T2>();
  letraU = new ArrayList <U>();  letraU2 = new ArrayList <U2>();
  letraV = new ArrayList <V>();  letraV2 = new ArrayList <V2>();
  letraW = new ArrayList <W>();  letraW2 = new ArrayList <W2>();
  letraX = new ArrayList <X>();  letraX2 = new ArrayList <X2>();
  letraY = new ArrayList <Y>();  letraY2 = new ArrayList <Y2>();
  letraZ = new ArrayList <Z>();  letraZ2 = new ArrayList <Z2>();
  A = loadImage("A.jpg");        a = loadImage("A2.jpg");
  B = loadImage("B.jpg");        B2 = loadImage("B2.jpg");
  C = loadImage("C.jpg");        c = loadImage("C2.jpg");
  D = loadImage("D.jpg");        d = loadImage("D2.jpg");
  E = loadImage("E.jpg");        e = loadImage("E2.jpg");
  F = loadImage("F.jpg");        f = loadImage("F2.jpg");
  G = loadImage("G.jpg");        g = loadImage("G2.jpg");
  H = loadImage("H.jpg");        H2 = loadImage("H2.jpg");
  I = loadImage("I.jpg");        i = loadImage("I2.jpg");
  J = loadImage("J.jpg");        j = loadImage("J2.jpg");
  K = loadImage("K.jpg");        k = loadImage("K2.jpg");
  L = loadImage("L.jpg");        l = loadImage("L2.jpg");
  M = loadImage("M.jpg");        m = loadImage("M2.jpg");
  N = loadImage("N.jpg");        n = loadImage("N2.jpg");
  O = loadImage("O.jpg");        o = loadImage("O2.jpg");
  P = loadImage("P.jpg");        p = loadImage("P2.jpg");
  Q = loadImage("Q.jpg");        q = loadImage("Q2.jpg");
  R = loadImage("R.jpg");        r = loadImage("R2.jpg");
  S = loadImage("S.jpg");        s = loadImage("S2.jpg");
  T = loadImage("T.jpg");        t = loadImage("T2.jpg");
  U = loadImage("U.jpg");        u = loadImage("U2.jpg");
  V = loadImage("V.jpg");        v = loadImage("V2.jpg");
  W = loadImage("W.jpg");        W2 = loadImage("W2.jpg");
  X = loadImage("X.jpg");        X2 = loadImage("X2.jpg");
  Y = loadImage("Y.jpg");        Y2 = loadImage("Y2.jpg");
  Z = loadImage("Z.jpg");        z = loadImage("Z2.jpg");
  suelo = new Limite(256,512,600,5);
  pared = new Limite(0,256,5,512);  pared2 = new Limite(512,256,5,600);
}

void draw(){
  if( screen == 1)
  {
    Inicio.inicio();
  }
  
  if (screen == 2)
  {
    Instrucciones.instrucciones();
  }
  
  if (screen == 3)
  {
  Accion.accion();
  mundo.step();  
  displayall();  
  suelo.display();
  }
}

void keyPressed()
{
  if (key == BACKSPACE && screen == 3)
  {
   setup(); 
  }
}
