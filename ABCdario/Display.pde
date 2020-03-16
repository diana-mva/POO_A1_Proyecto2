void displayall()
{
  
  for(A c:letraA)
  {
    c.display();
  }
  
  for(A2 c:letraA2)
  {
    c.display();
  }  
  
  for(B c:letraB)
  {
    c.display();
  }   
  
  for(B2 c:letraB2)
  {
    c.display();
  } 
  
  for(C c:letraC)
  {
    c.display();
  }   
  
  for(C2 c:letraC2)
  {
    c.display();
  }  
  
  for(D c:letraD)
  {
    c.display();
  }   
  
  for(D2 c:letraD2)
  {
    c.display();
  }   

  for(E c:letraE)
  {
    c.display();
  }   
  
  for(E2 c:letraE2)
  {
    c.display();
  }  

  for(F c:letraF)
  {
    c.display();
  }   
  
  for(F2 c:letraF2)
  {
    c.display();
  }  

  for(G c:letraG)
  {
    c.display();
  }   
  
  for(G2 c:letraG2)
  {
    c.display();
  }  

  for(H c:letraH)
  {
    c.display();
  }   
  
  for(H2 c:letraH2)
  {
    c.display();
  }  

  for(I c:letraI)
  {
    c.display();
  }   
  
  for(I2 c:letraI2)
  {
    c.display();
  }  

  for(J c:letraJ)
  {
    c.display();
  }   
  
  for(J2 c:letraJ2)
  {
    c.display();
  }  

  for(K c:letraK)
  {
    c.display();
  }   
  
  for(K2 c:letraK2)
  {
    c.display();
  }  

  for(L c:letraL)
  {
    c.display();
  }   
  
  for(L2 c:letraL2)
  {
    c.display();
  }  

  for(M c:letraM)
  {
    c.display();
  }   
  
  for(M2 c:letraM2)
  {
    c.display();
  }  

  for(N c:letraN)
  {
    c.display();
  }   
  
  for(N2 c:letraN2)
  {
    c.display();
  }  

  for(O c:letraO)
  {
    c.display();
  }   
  
  for(O2 c:letraO2)
  {
    c.display();
  }  

  for(P c:letraP)
  {
    c.display();
  }   
  
  for(P2 c:letraP2)
  {
    c.display();
  }  

  for(Q c:letraQ)
  {
    c.display();
  }   
  
  for(Q2 c:letraQ2)
  {
    c.display();
  }  

  for(R c:letraR)
  {
    c.display();
  }   
  
  for(R2 c:letraR2)
  {
    c.display();
  }  

  for(S c:letraS)
  {
    c.display();
  }   
  
  for(S2 c:letraS2)
  {
    c.display();
  }  

  for(T c:letraT)
  {
    c.display();
  }   
  
  for(T2 c:letraT2)
  {
    c.display();
  }  

  for(U c:letraU)
  {
    c.display();
  }   
  
  for(U2 c:letraU2)
  {
    c.display();
  }  

  for(V c:letraV)
  {
    c.display();
  }   
  
  for(V2 c:letraV2)
  {
    c.display();
  }  

  for(W c:letraW)
  {
    c.display();
  }   
  
  for(W2 c:letraW2)
  {
    c.display();
  }  

  for(X c:letraX)
  {
    c.display();
  }   
  
  for(X2 c:letraX2)
  {
    c.display();
  }  

  for(Y c:letraY)
  {
    c.display();
  }   
  
  for(Y2 c:letraY2)
  {
    c.display();
  }  

  for(Z c:letraZ)
  {
    c.display();
  }   
  
  for(Z2 c:letraZ2)
  {
    c.display();
  }  

}

void mouseReleased()
{
  if(mouseButton == LEFT && mouseX >= 206 && mouseX <= 306 && mouseY >= 425 && mouseY <=475 && screen ==2 ) //Condicion que checa que el personaje no se haya escogido antes y al presionar el mouse izquierdo se escoge al personaje. 
    {
      screen = 3;
    }     
}

void keyReleased()
{
 if (key == ENTER && screen ==1)
 {
   screen = 2;  

 }
  
 if (screen == 3)
 {
 if (key == 'A')
 {
     letraA.add(new A(random(10,500), -10, 50,50,A)); 
     As.play();
 }
  
 if (key == 'a')
   {
     letraA2.add(new A2(random(10,500), -10, 27,32,a));  
     As.play();
   }
   
 if (key == 'B')
   {
     letraB.add(new B (random(10,500), -10, 43,48,B));  
     Bs.play();
   }
 if (key == 'b')
   {
     letraB2.add(new B2 (random(10,500), -10, 30,45,B2));  
     Bs.play();
   }
   
 if (key == 'C')
   {
     letraC.add(new C (random(10,500), -10, 44,49,C));  
     Cs.play();
   }
 if (key == 'c')
   {
     letraC2.add(new C2 (random(10,500), -10, 25,31,c));  
     Cs.play();
   }
   
 if (key == 'D')
   {
     letraD.add(new D (random(10,500), -10, 50,50,D));  
     Ds.play();
   }
 if (key == 'd')
   {
     letraD2.add(new D2 (random(10,500), -10, 30,46,d));  
     Ds.play();
   }
   
 if (key == 'E')
   {
     letraE.add(new E (random(10,500), -10, 42,48,E));  
     Es.play();
   }
 if (key == 'e')
   {
     letraE2.add(new E2 (random(10,500), -10, 25,31,e));  
     Es.play();
   }
   
 if (key == 'F')
   {
     letraF.add(new F (random(10,500), -10, 36,48,F));  
     Fs.play();
   }
 if (key == 'f')
   {
     letraF2.add(new F2 (random(10,500), -10, 26,44,f));  
     Fs.play();
   }
   
 if (key == 'G')
   {
     letraG.add(new G (random(10,500), -10, 50,50,G));  
     Gs.play();
   }
 if (key == 'g')
   {
     letraG2.add(new G2 (random(10,500), -10, 30,44,g));  
     Gs.play();
   }
   
 if (key == 'H')
   {
     letraH.add(new H (random(10,500), -10, 48,48,H));  
     Hs.play();
   }
 if (key == 'h')
   {
     letraH2.add(new H2 (random(10,500), -10, 32,45,H2));  
     Hs.play();
   }
   
 if (key == 'I')
   {
     letraI.add(new I (random(10,500), -10, 22,48,I));  
     Is.play();
   }
 if (key == 'i')
   {
     letraI2.add(new I2 (random(10,500), -10, 15,45,i));  
     Is.play();
   }   
   
 if (key == 'J')
   {
     letraJ.add(new J (random(10,500), -10, 27,50,J));  
     Js.play();
   }
 if (key == 'j')
   {
     letraJ2.add(new J2 (random(10,500), -10, 16,47,j));  
     Js.play();
   } 
   
 if (key == 'K')
   {
     letraK.add(new K (random(10,500), -10, 50,50,K));  
     Ks.play();
   }
 if (key == 'k')
   {
     letraK2.add(new K2 (random(10,500), -10, 33,44,k));  
     Ks.play();
   } 
   
 if (key == 'L')
   {
     letraL.add(new L (random(10,500), -10, 43,48,L));  
     Ls.play();
   }
 if (key == 'l')
   {
     letraL2.add(new L2 (random(10,500), -10, 17,45,l));  
     Ls.play();
   } 
   
 if (key == 'M')
   {
     letraM.add(new M (random(10,500), -10, 49,39,M));  
     Ms.play();
   }
 if (key == 'm')
   {
     letraM2.add(new M2 (random(10,500), -10, 49,32,m));  
     Ms.play();
   } 
   
 if (key == 'N')
   {
     letraN.add(new N (random(10,500), -10, 50,50,N));  
     Ns.play();
   }
 if (key == 'n')
   {
     letraN2.add(new N2 (random(10,500), -10, 34,31,n));  
     Ns.play();
   } 
   
 if (key == 'O')
   {
     letraO.add(new O (random(10,500), -10, 50,50,O));  
     Os.play();
   }
 if (key == 'o')
   {
     letraO2.add(new O2 (random(10,500), -10, 30,32,o));  
     Os.play();
   } 
   
 if (key == 'P')
   {
     letraP.add(new P (random(10,500), -10, 38,48,P));  
     Ps.play();
   }
 if (key == 'p')
   {
     letraP2.add(new P2 (random(10,500), -10, 31,44,p));  
     Ps.play();
   } 
   
 if (key == 'Q')
   {
     letraQ.add(new Q (random(10,500), -10, 39,50,Q));  
     Qs.play();
   }
 if (key == 'q')
   {
     letraQ2.add(new Q2 (random(10,500), -10, 32,44,q));  
     Qs.play();
   } 
   
 if (key == 'R')
   {
     letraR.add(new R (random(10,500), -10, 50,50,R));  
     Rs.play();
   }
 if (key == 'r')
   {
     letraR2.add(new R2 (random(10,500), -10, 23,30,r));  
     Rs.play();
   } 
   
 if (key == 'S')
   {
     letraS.add(new S (random(10,500), -10, 35,50,S));  
     Ss.play();
   }
 if (key == 's')
   {
     letraS2.add(new S2 (random(10,500), -10, 22,32,s));  
     Ss.play();
   } 
   
 if (key == 'T')
   {
     letraT.add(new T (random(10,500), -10, 41,48,T));  
     Ts.play();
   }
 if (key == 't')
   {
     letraT2.add(new T2 (random(10,500), -10, 19,39,t));  
     Ts.play();
   } 
   
 if (key == 'U')
   {
     letraU.add(new U (random(10,500), -10, 50,50,U));  
     Us.play();
   }
 if (key == 'u')
   {
     letraU2.add(new U2 (random(10,500), -10, 33,31,u));  
     Us.play();
   } 
   
 if (key == 'V')
   {
     letraV.add(new V (random(10,500), -10, 50,50,V));  
     Vs.play();
   }
 if (key == 'v')
   {
     letraV2.add(new V2 (random(10,500), -10, 33,31,v));  
     Vs.play();
   } 
   
 if (key == 'W')
   {
     letraW.add(new W (random(10,500), -10, 49,39,W));  
     Ws.play();
   }
 if (key == 'w')
   {
     letraW2.add(new W2 (random(10,500), -10, 49,31,W2));  
     Ws.play();
   } 
   
 if (key == 'X')
   {
     letraX.add(new X (random(10,500), -10, 50,50,X));  
     Xs.play();
   }
 if (key == 'x')
   {
     letraX2.add(new X2 (random(10,500), -10, 33,30,X2));  
     Xs.play();
   } 
   
 if (key == 'Y')
   {
     letraY.add(new Y (random(10,500), -10, 50, 50,Y));  
     Ys.play();
   }
 if (key == 'y')
   {
     letraY2.add(new Y2 (random(10,500), -10, 33,42,Y2));  
     Ys.play();
   } 
   
 if (key == 'Z')
   {
     letraZ.add(new Z (random(10,500), -10, 43,50,Z));  
     Zs.play();
   }
 if (key == 'z')
   {
     letraZ2.add(new Z2 (random(10,500), -10, 27,30,z));  
     Zs.play();
   } 
 }   
}
