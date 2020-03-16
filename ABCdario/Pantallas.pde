class Pantallas
{
  int BG;
  
  Pantallas(int BG_)
  {
   BG=BG_; 
  }
  void inicio()
  {       
    background(BG);
    
    pushMatrix();
    font = loadFont("TimesNewRomanPSMT.vlw");
    textFont(font, 64);
    fill(255);
    text("ABCdario",130 , 200); 
    popMatrix();
    
    pushMatrix();
    textFont(font, 32);
    fill(255);
    text("Presiona ENTER para continuar",50, 350);
    popMatrix();
  }
  void instrucciones()
  {  
    background(BG);
    
    pushMatrix();
    textFont(font, 48);
    fill(255);
    text("INSTRUCCIONES",72, 100);
    popMatrix();
    
    pushMatrix();
    textFont(font, 22);
    fill(255);
    text("Presiona cualquier tecla del abecedario para que",45, 150);
    text("la letra presionada aparezca en pantalla.",80, 175);
    text("La letra Ñ no es funcional.",140, 210);
    text("Las letras cambian si las mayusculas estan activadas.",25, 245);
    text("Para limpiar la pantalla",156,280); 
    text("presione BACKSPACE/RETROCEDER.",80, 305);
    text("El programa no tiene fin, para finalizarlo presione ESC.",10, 340);    
    text("Tenga el sonido activado.",146, 375);    
    text("Click izquierdo en empezar para continuar.",70, 410);
    popMatrix(); 
    
    pushMatrix();
    stroke(255);
    rectMode(CENTER);
    fill(0);
    if(mouseX >= 206 && mouseX <= 306 && mouseY >= 425 && mouseY <=475 && screen ==2)
    {
     fill(255);
    }
    rect (256,450,100,50);
    popMatrix();
    
    pushMatrix();
    textFont(font, 25);
    fill(255);
    if(mouseX >= 206 && mouseX <= 306 && mouseY >= 425 && mouseY <=475 && screen ==2)
    {
     fill(0);
    }    
    text("Empezar",213, 455);
    popMatrix();       
  }
  void accion()
  {    
    pushMatrix();
    background(BG);
    popMatrix();
  }
}
