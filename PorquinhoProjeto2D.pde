 // BILBIOTECAS
import processing.sound.*;

// VARIÁVEIS GLOBAIS

// Som
SoundFile file;
int auxSom = 0;
int i=0, tempoAtual=0, tempoPassado=0;
// Cilios
//direito
float c1Dx1x4=420, c1c2c3Dy1=107, c1Dx2x3=418, c1c2c3Dy2y3=114, c1c2c3Dy4=119;
float c2Dx1x4=430,  c2Dx2x3=428;
float c3Dx1x4=440, c3Dx2x3=438;
//esquerdo
float c1Ex1x4=360, c1Ex2x3=362, c1c2c3Ey1=107, c1c2c3Ey2y3=114, c1c2c3Ey4=119;
float c2Ex1x4=370, c2Ex2x3=372;
float c3Ex1x4=380, c3Ex2x3=382;



//Sobrancelhas
float s1x1 = 352.0, s1y1 = 95.0, s1x2 = 360.0, s1y2 = 86.0, s1x3 = 385.0, s1y3 = 90.0, s1x4 = 387.5, s1y4 = 95.0;
float s2x1 = 412.0, s2y1 = 95.0, s2x2 = 420.0, s2y2 = 86.0, s2x3 = 445.0, s2y3 = 90.0, s2x4 = 446.5, s2y4 = 95.0;

// Boca
float b1x1 = 390.0, b1y1 = 217.0, b1x2 = 390.0, b1y2 = 225.0, b1x3 = 415.0, b1y3 = 225.0, b1x4 = 410.0, b1y4 = 217.0;

// Bolota do olho
int BOEx = 370, BOEy = 120; // bolota olho esquerdo
int BODx = 430, BODy = 120; // bolota olho direito
int ellipseRadiusXE = 15, ellipseRadiusYE = 20; // esquerdo
int ellipseRadiusXD = 15, ellipseRadiusYD = 20; // direito

// Olhos
// esquerdo
float eyeColorRE = 255, eyeColorGE = 255, eyeColorBE = 255;
float ellipseLeye1 = 370, ellipseLeye2 = 120, ellipseLeye3 = 35, ellipseLeye4 = 45;

// direito
float eyeColorRD = 255, eyeColorGD = 255, eyeColorBD = 255;
float ellipseReye1 = 430, ellipseReye2 = 120, ellipseReye3 = 35, ellipseReye4 = 45;

// Palpebras
// esquerda
float pE1 = 352, pE2 = 120, pE3 = 360, pE4 = 86, pE5 = 385, pE6 = 90, pE7 = 387.5, pE8 = 120;
// direita
float pD1 = 412, pD2 = 120, pD3 = 420, pD4 = 86, pD5 = 445, pD6 = 90, pD7 = 446.5, pD8 = 120;


// Orelhas
// Y das orelhas
float oY1 = 75, oY2 = 75, oY3 = 57, oY4 = 50, oY5 = 49, oY6 = 50, oY7 = 90, oY8 = 100, oY9 = 100;
// esquerda
float oEX1 = 450, oEX2 = 450, oEX3 = 460, oEX4 = 475, oEX5 = 490, oEX6 = 500, oEX7 = 495, oEX8 = 475, oEX9 = 475;
// direita
float oDX1 = 350, oDX2 = 350, oDX3 = 340, oDX4 = 325, oDX5 = 310, oDX6 = 300, oDX7 = 305, oDX8 = 325, oDX9 = 325;

// Linhas das orelhas
float lOY1 = 78, lOY2 = 62, lOY3 = 62, lOY5 = 50;

void setup() {

    size(800, 700); // Tamanho tela
    //noStroke(); // Cor da borda, para sem borda = noStroke(); 
    background(255);
    //noFill();

}

void draw() {
    stroke(0);
    background(255);
    fill(0);
    textSize(15);
    text("O - Mover orelhas", 10, 25);
    text("S - Mover sobrancelhas", 10, 40);
    text("F - Fechar os dois olhos", 10, 55);
    text("B - Mover boca", 10, 70);
    text("G - Som", 10, 85);
    text("leftArrow - Fechar olho esquerdo", 10, 100);
    text("rightArrow - Fechar olho direito", 10, 115);

    // CORPO
    fill(240, 130, 120); //RGB
    ellipse(400, 350, 300, 380); // Tronco

    // PERNAS 
    fill(240, 130, 120);
    beginShape();
    curveVertex(510, 495);
    curveVertex(510, 485);
    curveVertex(500, 550);
    curveVertex(485, 590);
    curveVertex(450, 515);
    curveVertex(400, 400);
    endShape();
    fill(0);
    triangle(480, 585, 485, 600, 490, 585);
    triangle(485, 585, 490, 600, 493.5, 585);


    fill(240, 130, 120);
    beginShape();
    curveVertex(370, 485);
    curveVertex(370, 510);
    curveVertex(360, 550);
    curveVertex(345, 590);
    curveVertex(300, 500);
    curveVertex(250, 300);
    endShape();
    fill(0);
    triangle(340, 585, 345, 600, 350, 585);
    triangle(345, 585, 350, 600, 353.5, 585);

    // ROUPA 
    // Short
    fill(80, 40, 200);
    beginShape();
    curveVertex(510, 495);
    curveVertex(515, 480);
    curveVertex(505, 530);
    curveVertex(485, 540);
    curveVertex(460, 540);
    curveVertex(450, 520);
    curveVertex(500, 480);
    curveVertex(515, 480);
    curveVertex(500, 500);
    endShape();
    beginShape();
    curveVertex(370, 495);
    curveVertex(375, 470);
    curveVertex(365, 540);
    curveVertex(345, 550);
    curveVertex(320, 550);
    curveVertex(305, 530);
    curveVertex(290, 480);
    curveVertex(375, 480);
    curveVertex(340, 500);
    endShape();
    bezier(330, 500, 350, 560, 450, 560, 475, 500);

    // Braço Direito
    noFill();
    bezier(260, 280, 270, 350, 275, 350, 300, 380);
    bezier(300, 260, 280, 350, 285, 350, 310, 370);
    fill(0);
    triangle(300, 380, 315, 390, 307, 372);
    triangle(305, 375, 320, 385, 310, 370);

    //Braço Esquerdo
    noFill();
    bezier(540, 280, 545, 350, 545, 350, 500, 380);
    bezier(500, 260, 530, 350, 530, 350, 500, 368);
    fill(0);
    triangle(500, 372, 490, 385, 505, 377);
    triangle(500, 368, 485, 380, 505, 375);


    //BARRIGA
    fill(240, 130, 120);
    bezier(280, 452, 370, 570, 430, 570, 520, 452);
    bezier(320, 360, 370, 330, 430, 330, 480, 360);
    fill(150, 50, 50);
    ellipse(400, 490, 8, 8); //Umbigo

    // ROUPA
    fill(255, 0, 255);
    triangle(330, 310, 355, 260, 380, 310);
    fill(111, 3, 252);
    triangle(415, 310, 440, 260, 465, 310);
    line(355, 260, 360, 230);
    line(440, 260, 435, 230);
    line(380, 310, 415, 310);
    line(465, 310, 514, 300);
    line(330, 310, 293, 300);
    line(263, 295, 257, 290);

    // CABEÇA
    fill(240, 130, 120); //RGB
    ellipse(400, 150, 180, 180);

    // NARIZ
    fill(250, 120, 150);
    ellipse(400, 175, 60, 50); // Nariz
    fill(150, 50, 50);
    ellipse(390, 180, 10, 10); // Bolota do nariz esquerdo
    ellipse(410, 180, 10, 10); // Bolota do nariz direito

    noFill();
    bezier(375, 152, 390, 140, 410, 142, 425, 152);

    // BOCHECHAS
    fill(240, 130, 120);
    bezier(440, 200, 425, 200, 415, 160, 440, 150);
    bezier(360, 200, 385, 200, 385, 160, 360, 150);

    //OLHOS
    // olho esquerdo
    // fill(eyeColorRE,eyeColorGE,eyeColorBE);
    fill(255);
    ellipse(ellipseLeye1, ellipseLeye2, ellipseLeye3, ellipseLeye4);
    fill(0);
    ellipse(BOEx, BOEy, ellipseRadiusXE, ellipseRadiusYE); // Bolota olho esquerdo: BOEx=370, BOEy=120; //<>//
    fill(250, 0, 250);
    // pE1=352,pE2=120,pE3=360,pE4=86,pE5=385,pE6=90,pE7=387.5,pE8=115;
    bezier(pE1, pE2, pE3, pE4, pE5, pE6, pE7, pE8); // Palpebra esquerda

    // olho direito
    // fill(eyeColorRD,eyeColorGD,eyeColorBD);
    fill(255);
    ellipse(ellipseReye1, ellipseReye2, ellipseReye3, ellipseReye4);
    fill(0);
    ellipse(BODx, BODy, ellipseRadiusXD, ellipseRadiusYD); // Bolota olho direito: BODx=430, BODy=120
    fill(250, 0, 250);
    // pD1=412,pD2=115,pD3=420,pD4=86,pD5=445,pD6=90,pD7=446.5,pD8=120;
    bezier(pD1, pD2, pD3, pD4, pD5, pD6, pD7, pD8); // Palpebra direita

    noFill();
    // SOBRANCELHAS
    bezier(s1x1, s1y1, s1x2, s1y2, s1x3, s1y3, s1x4, s1y4); // Sobrancelha esquerda: s1x1=352.0, s1y1=95.0, s1x2=360.0, s1y2=86.0, s1x3=385.0, s1y3=90.0, s1x4=387.5, s1y4=95.0

    bezier(s2x1, s2y1, s2x2, s2y2, s2x3, s2y3, s2x4, s2y4); // Sobrancelha direita: s2x1=412.0, s2y1=95.0, s2x2=420.0, s2y2=86.0,s2x3=445.0, s2y3=90.0,s2x4=446.5,s2y4=95.0

    // BOCA
    fill(150, 50, 50);
    bezier(b1x1, b1y1, b1x2, b1y2, b1x3, b1y3, b1x4, b1y4); // Boca: b1x1=385.0, b1y1=217.0, b1x2=390.0, b1y2=225.0, b1x3=415.0, b1y3=225.0, b1x4=415.0, b1y4=217.0 

    // PAPADA
    noFill();
    bezier(375, 222, 390, 235, 410, 235, 425, 222);

    // PNEUZINHOS
    fill(240, 130, 120);
    bezier(290, 480, 275, 480, 265, 440, 265, 430);
    bezier(510, 475, 525, 480, 535, 440, 535, 425);

    //ORELHAS
    // esquerda
    fill(240, 130, 120);

    beginShape();
    curveVertex(oEX1, oY1);
    curveVertex(oEX2, oY2);
    curveVertex(oEX3, oY3);
    curveVertex(oEX4, oY4);
    curveVertex(oEX5, oY5);
    curveVertex(oEX6, oY6);
    curveVertex(oEX7, oY7);
    curveVertex(oEX8, oY8);
    curveVertex(oEX9, oY9);
    endShape();
    // direita
    beginShape();

    curveVertex(oDX1, oY1);
    curveVertex(oDX2, oY2);
    curveVertex(oDX3, oY3);
    curveVertex(oDX4, oY4);
    curveVertex(oDX5, oY5);
    curveVertex(oDX6, oY6);
    curveVertex(oDX7, oY7);
    curveVertex(oDX8, oY8);
    curveVertex(oDX9, oY9);
    endShape();

    noFill();

    // orelha esquerda linha
    bezier(455, lOY1, 460, lOY2, 460, lOY3, 500, lOY5);
    // orelha direita linha
    bezier(345, lOY1, 340, lOY2, 340, lOY3, 300, lOY5);

    //Pelinhos
    line(350, 555, 355, 560);
    line(330, 555, 335, 560);
    line(345, 560, 340, 565);
    line(495, 565, 490, 570);
    line(485, 550, 480, 555);
    line(340, 575, 344, 577);
    line(347, 568, 351, 572);
    line(490, 575, 494, 577);
    line(480, 565, 484, 567);
    line(480, 577, 485, 579);
    line(470, 545, 475, 550);
    line(490, 545, 495, 550);
    
    
    //cilios
    noFill();
    stroke(0,0,250);
    //cilios direito
    bezier(c1Dx1x4,c1c2c3Dy1, c1Dx2x3,c1c2c3Dy2y3,c1Dx2x3,c1c2c3Dy2y3,c1Dx1x4,c1c2c3Dy4); //float c1Dx1x4=420, c1c2c3DEy1=107, c1Dx2x3=418, c1c2c3DEy2y3=114, c1c2c3DEy4=119;
    bezier(c2Dx1x4,c1c2c3Dy1, c2Dx2x3,c1c2c3Dy2y3,c2Dx2x3,c1c2c3Dy2y3,c2Dx1x4,c1c2c3Dy4); //float c2Dx1x4=430,  c2Dx2x3=428;
    bezier(c3Dx1x4,c1c2c3Dy1, c3Dx2x3,c1c2c3Dy2y3,c3Dx2x3,c1c2c3Dy2y3,c3Dx1x4,c1c2c3Dy4); // float c3Dx1x4=440, c3Dx2x3=438;
    //cilios esquerdo
    bezier(c1Ex1x4,c1c2c3Ey1, c1Ex2x3,c1c2c3Ey2y3,c1Ex2x3,c1c2c3Ey2y3,c1Ex1x4,c1c2c3Ey4); //float c1Ex1x4=360, c1Ex2x3=362;
    bezier(c2Ex1x4,c1c2c3Ey1, c2Ex2x3,c1c2c3Ey2y3,c2Ex2x3,c1c2c3Ey2y3,c2Ex1x4,c1c2c3Ey4); //float c2Ex1x4=370, c2Ex2x3=372;
    bezier(c3Ex1x4,c1c2c3Ey1, c3Ex2x3,c1c2c3Ey2y3,c3Ex2x3,c1c2c3Ey2y3,c3Ex1x4,c1c2c3Ey4); //float c3Ex1x4=380, c3Ex2x3=382;
 
    
    
    //saveFrame("Tarefa1.png"); // Salva em png

}

void resetSobrancelhas() {
    s1x1 = 352.0;
    s1y1 = 95.0;
    s1x2 = 360.0;
    s1y2 = 86.0;
    s1x3 = 385.0;
    s1y3 = 90.0;
    s1x4 = 387.5;
    s1y4 = 95.0;
    s2x1 = 412.0;
    s2y1 = 95.0;
    s2x2 = 420.0;
    s2y2 = 86.0;
    s2x3 = 445.0;
    s2y3 = 90.0;
    s2x4 = 446.5;
    s2y4 = 95.0;
    b1x1 = 390.0;
    b1y1 = 217.0;
    b1x2 = 390.0;
    b1y2 = 225.0;
    b1x3 = 415.0;
    b1y3 = 225.0;
    b1x4 = 410.0;
    b1y4 = 217;
}

void resetBoca() {
    b1x1 = 390.0;
    b1y1 = 217.0;
    b1x2 = 390.0;
    b1y2 = 225.0;
    b1x3 = 415.0;
    b1y3 = 225.0;
    b1x4 = 410.0;
    b1y4 = 217;
}

void resetOrelhas() {
    lOY1 = 78;
    lOY2 = 62;
    lOY3 = 62;
    lOY5 = 50;
    oY1 = 75;
    oY2 = 75;
    oY3 = 57;
    oY4 = 50;
    oY5 = 49;
    oY6 = 50;
    oY7 = 90;
    oY8 = 100;
    oY9 = 100;
}

void resetPalpebras() {
    pE1 = 352;
    pE2 = 120;
    pE3 = 360;
    pE4 = 86;
    pE5 = 385;
    pE6 = 90;
    pE7 = 387.5;
    pE8 = 120;
    pD1 = 412;
    pD2 = 120;
    pD3 = 420;
    pD4 = 86;
    pD5 = 445;
    pD6 = 90;
    pD7 = 446.5;
    pD8 = 120;
    
    // Cilios
    //direito
    c1Dx1x4=420; c1c2c3Dy1=107; c1Dx2x3=418; c1c2c3Dy2y3=114; c1c2c3Dy4=119; c2Dx1x4=430;  c2Dx2x3=428; c3Dx1x4=440; c3Dx2x3=438;
    //esquerdo
    c1Ex1x4=360; c1Ex2x3=362; c1c2c3Ey1=107; c1c2c3Ey2y3=114; c1c2c3Ey4=119; c2Ex1x4=370; c2Ex2x3=372; c3Ex1x4=380; c3Ex2x3=382;
    
    
}

void resetOlhos() {

    ellipseLeye1 = 370;
    ellipseLeye2 = 120;
    ellipseLeye3 = 35;
    ellipseLeye4 = 45;
    ellipseReye1 = 430;
    ellipseReye2 = 120;
    ellipseReye3 = 35;
    ellipseReye4 = 45;
    eyeColorRE = 255;
    eyeColorGE = 255;
    eyeColorBE = 255;
    eyeColorRD = 255;
    eyeColorGD = 255;
    eyeColorBD = 255;
    pE1 = 352;
    pE2 = 120;
    pE3 = 360;
    pE4 = 86;
    pE5 = 385;
    pE6 = 90;
    pE7 = 387.5;
    pE8 = 120;
    pD1 = 412;
    pD2 = 120;
    pD3 = 420;
    pD4 = 86;
    pD5 = 445;
    pD6 = 90;
    pD7 = 446.5;
    pD8 = 120;
    ellipseRadiusXE = 15;
    ellipseRadiusYE = 20;
    ellipseRadiusXD = 15;
    ellipseRadiusYD = 20;
}

void keyPressed() {

    // Mexer as sobrancelhas ao apertar s ou S  
    if (key == 's' || key == 'S') {
        s1y2 = 70.0;
        s2y3 = 70.0;
        resetBoca();
        resetOlhos();
        resetOrelhas();
        resetPalpebras();
    }

    // Faz um som ao apertar g ou G
    else if (auxSom == 0 && key == 'g' || key == 'G') {
        file = new SoundFile(this, "porquinho.mp3");
        file.play();
        auxSom = 1;
        
    }

    // PAra o som ao apertar g ou G
    else if (auxSom == 1 && key == 'g' || key == 'G') {
        file.stop();
        auxSom = 0;
    }

    // Mover a boca ao apertar b ou B
    else if (key == 'b' || key == 'B') {
        // Boca: b1x1=390.0, b1y1=217.0, b1x2=390.0, b1y2=225.0, b1x3=415.0, b1y3=225.0, b1x4=410.0, b1y4=217.0 

        resetOlhos();
        resetOrelhas();
        resetPalpebras();
        resetSobrancelhas();

        b1y1 = 210.0;
        b1x1 = 385.0;
        b1y4 = 210.0;
        b1x4 = 415.0;

    }

    // Mover orelhas ao apertar o ou O
    else if (key == 'o' || key == 'O') {

        oY1 = 95;
        oY2 = 95;
        oY3 = 77;
        oY4 = 70;
        oY5 = 69;
        oY6 = 70;
        oY7 = 110;
        oY8 = 120;
        oY9 = 120;
        lOY1 = 98;
        lOY2 = 82;
        lOY3 = 82;
        lOY5 = 70;

        resetBoca();
        resetOlhos();
        resetPalpebras();
        resetSobrancelhas();

    }

    // Fechar os olhos ao apertar f ou F
    else if (key == 'f' || key == 'F') {

        ellipseRadiusXE = 0;
        ellipseRadiusYE = 0;
        ellipseRadiusXD = 0;
        ellipseRadiusYD = 0;

        pE2 = 120;
        pE8 = 120;
        pD2 = 120;
        pD8 = 120;
        
        ellipseLeye4 = 0;
        ellipseReye4 = 0;
        
        //cilios direito
        c1Dx1x4=420; c1c2c3Dy1=120; c1Dx2x3=419; c1c2c3Dy2y3=123; c1c2c3Dy4=126;
        c2Dx1x4=430;  c2Dx2x3=429;
        c3Dx1x4=440; c3Dx2x3=439;
        //cilios esquerdo
        c1c2c3Ey1=120;
        c1c2c3Ey2y3=123;
        c1c2c3Ey4=126;
        c1Ex1x4=360; c1Ex2x3=361;
        c2Ex1x4=370; c2Ex2x3=371;
        c3Ex1x4=380; c3Ex2x3=381;

        resetBoca();
        resetOrelhas();
       // resetPalpebras();
        resetSobrancelhas();
        
    } 
    
    else if (key == CODED) {
        // Fechar olho esquerdo ao apertar leftArrow
        if (keyCode == LEFT) {
            resetBoca();
            resetOlhos();
            resetOrelhas();
            resetPalpebras();
            resetSobrancelhas();

            ellipseRadiusXE = 0;
            ellipseRadiusYE = 0;
            ellipseLeye4 = 0;
            
            //cilios esquerdo
            c1c2c3Ey1=120;
            c1c2c3Ey2y3=123;
            c1c2c3Ey4=126;
            c1Ex1x4=360; c1Ex2x3=361;
            c2Ex1x4=370; c2Ex2x3=371;
            c3Ex1x4=380; c3Ex2x3=381;
            

        }

        // Fechar olho direito ao apertar leftArrow
        if (keyCode == RIGHT) {
            resetBoca();
            resetOlhos();
            resetOrelhas();
            resetPalpebras();
            resetSobrancelhas();

            ellipseRadiusXD = 0;
            ellipseRadiusYD = 0;
            ellipseReye4 = 0;

            //cilios direito
            c1Dx1x4=420; c1c2c3Dy1=120; c1Dx2x3=419; c1c2c3Dy2y3=123; c1c2c3Dy4=126;
            c2Dx1x4=430;  c2Dx2x3=429;
            c3Dx1x4=440; c3Dx2x3=439;
        }
    } 
    else { // volta ao estado inicial da boca quando apertar uma tecla diferente

        resetBoca();
        resetOlhos();
        resetOrelhas();
        resetPalpebras();
        resetSobrancelhas();

    }

}

// Função para movimento das bolotas dos olhos: seguindo o cursor do mouse
void mouseMoved() {

    // BOEx=370, BOEy=120; // bolota olho esquerdo inicial
    // BODx=430, BODy=120; // bolota olho direito inicial
    if (mouseX <= 300 && mouseX >= 0 && mouseY < 250 && mouseY >= 0) {
        BOEx = 362;
        BOEy = 118;

        BODx = 422;
        BODy = 118;
    } else if (mouseX <= 300 && mouseY >= 250 && mouseY < 450) {
        BOEx = 362;
        BOEy = 125;

        BODx = 422;
        BODy = 125;
    } else if (mouseX <= 300 && mouseY >= 450 && mouseY <= 700) {
        BOEx = 367;
        BOEy = 132;

        BODx = 425;
        BODy = 132;
    } else if (mouseX > 350 && mouseX <= 450 && mouseY >= 140) {
        BOEx = 376;
        BOEy = 132;

        BODx = 424;
        BODy = 132;
    } else if (mouseX > 350 && mouseX <= 450 && mouseY > 100 && mouseY < 140) {
        BOEx = 375;
        BOEy = 130;

        BODx = 425;
        BODy = 130;
    } else if (mouseX >= 350 && mouseX < 450 && mouseY <= 100) {
        BOEx = 378;
        BOEy = 118;

        BODx = 422;
        BODy = 118;

    } else if (mouseX >= 450 && mouseY <= 140) {
        BOEx = 380;
        BOEy = 118;

        BODx = 440;
        BODy = 118;
    } else if (mouseX >= 450 && mouseY >= 500) {
        BOEx = 375;
        BOEy = 130;

        BODx = 437;
        BODy = 130;
    }

}
