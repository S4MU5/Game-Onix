uses wingraph,wincrt;
VAR A,B,X,Y,i:INTEGER;
STRELKA:POINTER;
CH:CHAR;

 procedure loader(st:string; var p:pointer);
 var f:file;
 sz:longint;
 begin
 assign(f,st);
 reset(f,1);
 sz:=filesize(f);
 Getmem(p,sz);
 blockread(f,p^,sz);
 close(f);

 end;
 PROCedure HELP;
 BEGIN
 readkey;

 END;
//
 procedure zast;
 var a,b,x,y:integer;
 begin
 x:=100;
 y:=100;
 a:=9;
 b:=11;
 initgraph(a,b,'');
//zametki
  cleardevice;
// второй уровень (недоделан)

 end;
  PROCEDure LVL2;
     begin
readkey;
end;

// первый уровень
 procedure LVL1;
// двумерый массив
const lab: array[1..30,1..56] of integer = ((1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
(1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,3,0,1,0,0,1,0,4,0,0,0,1,0,1,0,4,1,4,1,0,1,0,0,0,0,0,0,0,0,0,1),
(1,3,1,0,1,0,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1,0,0,0,0,1,0,0,0,1,1,1,1,0,1,0,1,0,0,0,1,1,0,1,0,1,1,1,1,1,0,1,1,1,0,1),
(1,0,1,0,0,1,1,1,0,1,0,0,0,1,1,1,0,1,0,1,1,0,1,1,1,1,1,0,1,0,1,0,0,0,1,0,0,1,1,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,3,1),
(1,0,0,1,1,0,0,0,0,1,0,1,1,1,4,1,0,1,0,0,1,0,0,0,1,0,4,0,0,0,1,0,1,1,1,1,0,0,0,0,0,1,4,1,1,1,1,1,1,1,1,1,0,1,0,1),
(1,0,1,0,0,0,1,1,1,1,0,1,0,1,0,1,0,1,1,3,1,0,1,0,1,0,1,1,1,0,1,0,0,1,0,0,0,1,1,1,1,1,0,1,0,1,3,0,1,0,1,0,0,1,0,1),
(1,0,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,1,1,1,1,0,0,0,1,0,0,0,1,0,0,1,0,1,0,0,0,1,0,1,0,1,0,0,1,0,1,1,0,1,0,1),
(1,0,1,0,0,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,1,0,0,0,1,0,1,0,1,1,1,0,3,1,0,1,0,0,0,1,0,5,0,1,0,1,1,0,1,0,0,0,0,1,0,1),
(1,0,4,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,0,0,1,0,1,1,1,1,1,1,1,0,1,0,1,0,0,0,0,1,4,1,1,1,1,0,1),
(1,1,1,1,1,1,1,1,1,1,1,5,1,0,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,0,0,1,0,0,0,6,1,0,1,0,1,0,1,0,1,1,0,0,0,0,0,0,1),
(1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,4,0,1,0,1,0,0,1,0,0,0,0,0,1,0,1,0,1,1,1,1,5,1,0,1,0,0,0,1,0,0,0,0,1,1,1,1,0,1),
(1,0,1,0,0,0,1,0,1,0,1,0,1,1,1,1,1,0,0,0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0,4,0,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1),
(1,0,1,1,1,1,1,0,1,0,3,0,1,0,0,0,1,1,1,0,0,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,0,0,0,1,0,1,0,1,0,0,0,0,1,0,0,0,1,1,0,1),
(1,0,0,0,0,0,1,0,0,0,1,1,1,0,1,0,1,0,0,1,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,1,0,1,1,0,0,0,0,1,0,1,1,1,1,1,1,1,1,0,0,1),
(1,0,0,0,1,0,1,1,1,1,0,0,0,0,1,0,0,0,0,1,0,1,0,1,0,3,0,0,1,0,1,1,1,0,0,1,0,1,0,0,1,1,1,0,3,0,0,0,1,0,0,0,1,0,0,1),
(1,1,1,0,1,0,0,0,0,1,0,1,0,1,1,1,1,1,0,0,0,1,0,1,1,1,1,1,1,0,1,0,0,0,0,1,0,1,0,0,4,0,1,0,1,0,1,0,0,0,1,0,1,1,0,1),
(1,4,0,0,1,0,0,1,0,0,0,0,1,1,0,0,0,1,1,1,1,1,1,0,0,0,1,0,1,0,1,0,0,1,1,1,1,1,5,1,1,0,0,1,0,0,1,1,0,1,0,0,0,1,0,1),
(1,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,0,1,0,0,0,0,0,0,1,1,1,0,1,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,1,0,0,0,0,0,1),
(1,0,1,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,0,1,0,0,1,3,1,0,0,0,1,0,1,0,0,1,4,1,1,1,1,0,1,0,1,0,0,1,0,1,1,1,0,1,1,1,1,1),
(1,0,1,1,1,0,1,0,0,0,1,0,1,0,1,1,1,1,1,1,0,1,1,0,0,0,1,0,1,0,0,0,3,1,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),
(1,0,1,0,4,0,1,1,1,1,1,0,1,0,0,1,0,0,0,4,0,1,0,0,1,0,1,0,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1),
(1,0,1,0,1,1,1,0,0,0,1,0,0,5,1,1,0,1,1,1,5,1,0,1,0,1,1,1,1,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1),
(1,0,1,0,3,0,1,0,1,0,1,1,1,0,0,1,0,1,0,0,0,0,0,0,3,0,0,0,1,0,1,0,1,1,1,1,1,0,1,0,1,1,1,0,0,0,0,4,1,1,1,0,1,1,0,1),
(1,0,1,1,1,0,1,0,1,0,0,0,0,0,1,1,0,1,0,1,1,1,1,1,1,1,0,0,1,0,1,0,1,0,0,0,0,1,1,0,0,0,1,0,1,1,1,1,1,0,1,0,0,0,0,1),
(1,0,0,1,0,0,0,0,1,0,1,1,0,1,0,1,0,1,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,1,0,0,1,1,1,1,0,1,0,1,0,0,0,0,1,0,0,0,0,1),
(1,1,0,1,1,0,1,1,1,0,0,1,1,1,0,1,0,1,1,1,1,1,1,1,0,1,1,0,5,0,1,1,1,1,1,1,0,0,1,0,1,0,1,1,1,0,1,1,1,1,1,0,1,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,4,0,0,0,1,0,0,1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,3,0,0,0,0,0,0,1),
(1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,0,1,1,1,5,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1),
(1,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,3,1,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1),
(1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
var kpod,tri,ik,jk,xke,yke,pod,xkey,ykey,kkletka,lives,kgold,kzlo,xch,ych,ich,jch,a,b,r,i,j,golda,x,y,dx,dy,sx,sy:integer;
    timer,time:longint;
    kletka,key1,key,golda1,gold,chlb,hero,chl,stena,cvoboda,chlr,chll:pointer;
     ch:char;
     go:boolean;
     nzlo,xz,yz,iz,jz: array [1..15] of integer;
     zlo: array [1..15] of pointer;
     xkl,xkletka,xk,yk,xg,yg,xgold: array [1..20] of integer;
     slives,sgolda:string;
     begin


sx:=100;
sy:=100;
golda:=1;
dx:=25;
dy:=25;
loader('hero.bmp',chl);
loader('gold.bmp',gold);
loader('herob.bmp',chlb);
loader('herol.bmp',chll);
loader('heror.bmp',chlr);
loader('zlo1.bmp',zlo[1]);
loader('cvoboda.bmp',cvoboda);
loader('stena.bmp',stena);
loader('zlo2.bmp',zlo[2]);
loader('zlo3.bmp',zlo[3]);
loader('zlo4.bmp',zlo[4]);
loader('zlo5.bmp',zlo[5]);
loader('zlo6.bmp',zlo[6]);
loader('zlo7.bmp',zlo[7]);
loader('zlo8.bmp',zlo[8]);
loader('zlo9.bmp',zlo[9]);
loader('zlo10.bmp',zlo[10]);
loader('zlo6.bmp',zlo[11]);
loader('zlo7.bmp',zlo[12]);
loader('zlo8.bmp',zlo[13]);
loader('zlo9.bmp',zlo[14]);
loader('zlo10.bmp',zlo[15]);
loader('golda1.bmp',golda1);
loader('kletka.bmp',kletka);
loader('key.bmp',key);
loader('key1.bmp',key1);

hero:=chll;
randomize;
lives:=5;
str(lives,slives);
outtextxy(500,500,' L I F E S :');
outtextxy(900,500,slives);
delay(1000);
cleardevice;
kkletka:=0;
ch:=#0;
kgold:=0;
kzlo:=0;
// генерация лабиринта
   for i:=1 to 30 do
   for j:=1 to 56 do

   begin
   x:=sx+(j-1)*dx;
   y:=sy+(i-1)*dy;
   case lab[i,j] of
   0:putimage(x,y,cvoboda^,xorput);
   1:putimage(x,y,stena^,xorput);
   2: begin
      putimage(x,y,hero^,xorput);
      xch:=x;
      ych:=y;
      ich:=i;
      jch:=j;
      end;
   3: begin
      kzlo:=kzlo+1;
      putimage(x,y,zlo[kzlo]^,xorput);
      yz[kzlo]:=y;
      xz[kzlo]:=x;
      iz[kzlo]:=i;
      jz[kzlo]:=j;
      nzlo[kzlo]:=random(4);
      end;
4:BEGIN
       kgold:=kgold+1;
       putimage(x,y,gold^,xorput);
       XG[kgold]:=X;
       YG[kgold]:=Y;
       xgold[kgold]:=0;
       ENd;
 5: begin
   kkletka:=kkletka+1;
   putimage(x,y,kletka^,xorput);
   xk[kkletka]:=x;
   yk[kkletka]:=y;
   ik:=i;
   jk:=j;
   end;
6: begin
       putimage(x,y,key^,xorput);
       Xkey:=i;
       Ykey:=j;
       xkey:=0;
       xke:=x;
       yke:=y;

   end;
   end;
   end;
   time:=1;
   golda:=0;
   go:=false;

putimage(1600,100,golda1^,xorput);
str(golda,sgolda);
setcolor(yellow);
outtextxy(1700,100,sgolda);
pod:=0;
tri:=0;

// основной цикл программы
repeat

//проверка подбора ключа для открытия выхода из лабиринта
if (pod=1) and (kpod=0) then begin
lab[1,43]:=0;
putimage(1150,100,stena^,xorput);
kpod:=1;
end;
//открытие закрытых клетками проходов
if (golda >= 10) and (tri=0) then begin
                  for i:=1 to kkletka do begin
                   putimage(xk[i],yk[i],kletka^,xorput);
                   end;
                   for i:=1 to 30 do
                     for j:=1 to 56 do
                     if (lab[i,j]=5) then lab[i,j]:=0;
                   tri:=1;
                   end;
//подбор ключа
if (xch=xke) and (ych=yke) and (pod=0) then begin
pod:=1;
putimage(1700,250,key1^,xorput);
putimage(xke,yke,key^,xorput);
end;

//подбор монеты и вывод их количства слева верху на экране
for i:=1 to kgold do begin
IF (XCH = XG[i]) AND (YCH = YG[i]) and (xgold[i]=0)  THEN BEGIN
xgold[i]:=1;
setfillstyle(1,black);
bar(1700,100,1850,150);
GOLDA:=golda+1;
str(golda,sgolda);
setcolor(yellow);
outtextxy(1700,100,sgolda);
PUTIMAGE(XG[i],YG[i],GOLD^,XORPUT);

END;
end;


//движение монстров: раз в некое количество циклов (10). Случайное движение
time:=time+1;
if time>2000000000 then time:=1;

if time mod 10 = 0 then begin

for i:=1 to kzlo do
begin
nzlo[i]:=random(4);
putimage(xz[i],yz[i],zlo[i]^,xorput);
case nzlo[i] of

0: if {(xz<xch) and} (jz[i]+1<56) and (lab[iz[i],jz[i]+1]<>1)then begin
                                                    xz[i]:=xz[i]+dx;
                                                    jz[i]:=jz[i]+1;
                                                    end;

1:  if {(xz>xch) and }(jz[i]-1>0) and (lab[iz[i],jz[i]-1]<>1)  then begin
                                                      xz[i]:=xz[i]-dx;
                                                      jz[i]:=jz[i]-1;
                                                      end;
2: if {(yz<ych) and} (iz[i]+1<30) and (lab[iz[i]+1,jz[i]]<>1) then begin
                                                     yz[i]:=yz[i]+dy;
                                                     iz[i]:=iz[i]+1;
                                                     end;
3: if {(yz>ych) and} (iz[i]-1>0) and (lab[iz[i]-1,jz[i]]<>1)   then begin
                                                       yz[i]:=yz[i]-dy;
                                                       iz[i]:=iz[i]-1;
                                                       end;
end;
if (xz[i]=xch) and (yz[i]=ych) then go:=true;
putimage(xz[i],yz[i],zlo[i]^,xorput);

                               end;



                            end;

//управляемое движение героя
 if keypressed then begin
 ch:=readkey;
 if ch=#0 then ch:=readkey;

putimage(xch,ych,hero^,xorput);
// putimage(xch,ych,chl^,xorput);
 case ch of
 #87,#119: IF (LAB[ICH-1,JCH]<>1) and (LAB[ICH-1,JCH]<>5) THEN  begin

                                               ych:=ych-dy;
                                               ich:=ich-1;
					       hero:=chlb;
                                               putimage(xch,ych,hero^,xorput);                                          putimage(xch,ych,chlb^,xorput);
                                               end;

 #83,#115: if (ich+1<30) and (lab[ich+1,jch]<>1) and (LAB[ICH+1,JCH]<>5) then begin
                                               ych:=ych+dy;
                                               ich:=ich+1;
                                               hero:=chl;
                                               end;
 #68,#100: if (jch+1<56) and (lab[ich,jch+1]<>1)  and (LAB[ICH,JCH+1]<>5)then begin
                                               xch:=xch+dx;
                                               jch:=jch+1;
                                               hero:=chll;
                                               end;
 #65,#97: if (jch-1>0) and (lab[ich,jch-1]<>1)  and (LAB[ICH,JCH-1]<>5)then begin
                                               xch:=xch-dx;
                                               jch:=jch-1;
                                               hero:=chlr;
                                               end;
 end;
 putimage(xch,ych,hero^,xorput);
//  putimage(xch,ych,chl^,xorput);
                      end;




//условие проигрыша и новая генерация уровня
 if  go=true then begin

    cleardevice;
    lives:=lives-1;
    str(lives,slives);
     outtextxy(500,500,' Y O U     L O S E');
   delay(1000);
    readkey;
    cleardevice;
    outtextxy(500,500,'L I F E S :');
    outtextxy(1000,500,slives);
    delay(1000);
    cleardevice;
    kgold:=0;
    kkletka:=0;
    kzlo:=0;
       golda:=0;
   go:=false;
   putimage(1600,100,golda1^,xorput);
str(golda,sgolda);
outtextxy(1700,100,sgolda);
pod:=0;
tri:=0;
    //генерация уровня
    for i:=1 to 30 do
    for j:=1 to 56 do

     begin
     x:=sx+(j-1)*dx;
     y:=sy+(i-1)*dy;
     case lab[i,j] of
      0:putimage(x,y,cvoboda^,xorput);
      1:putimage(x,y,stena^,xorput);
      2: begin
       putimage(x,y,hero^,xorput);
       xch:=x;
       ych:=y;
       ich:=i;
       jch:=j;
       end;
     3: begin
       kzlo:=kzlo+1;
       putimage(x,y,zlo[kzlo]^,xorput);
       yz[kzlo]:=y;
       xz[kzlo]:=x;
       iz[kzlo]:=i;
       jz[kzlo]:=j;
       nzlo[kzlo]:=random(4);
       end;
     4:BEGIN
       kgold:=kgold+1;
       putimage(x,y,gold^,xorput);
       XG[kgold]:=X;
       YG[kgold]:=Y;
       xgold[kgold]:=0;
       END;
 5: begin
   kkletka:=kkletka+1;
   putimage(x,y,kletka^,xorput);
   xk[kkletka]:=x;
   yk[kkletka]:=y;
   ik:=i;
   jk:=j;
   end;
6: begin
       putimage(x,y,key^,xorput);
       Xkey:=i;
       Ykey:=j;
       xkey:=0;
       xke:=x;
       yke:=y;

   end;
   end;
   end;
                  end;
delay(10);
until  ((ich=1) and (jch=43))  or (ch=#27) or (lives=0);

//условия конца игры и полного проигрыша
                       if lives = 0 then begin
                        cleardevice;
                        outtextxy(500,500,'G A M E   O V E R ');
                        delay(1000);
                        readkey;
                        cleardevice;
                      end;
//условие выигрыша и перехода на новый уровень
                       if (ich=1) and (jch=43) then begin
                       cleardevice;
                       outtextxy(500,500,' Y O U    W I N');
                       delay(1000);
                       CLEARDEVICE;
                       readkey;
                        outtextxy(500,500,'L E V E L   2');
                        readkey;
                        cleardevice;
                        LVL2;
                       end;
                       end;


                      //процедура меню
                       procedure menu;
                       var a,b,x,y:integer;
                       ch:char;
                       begin
                        a:=9;
                                                             b:=11;
                                                             X:=50;
                                                             Y:=100;
                                                             initgraph(a,b,'');
                                                             cleardevice;
                                                             outtextxy(100,100,'G A M E');
                                                             outtextxy(100,200,'H E L P');
                                                             outtextxy(100,300,'E X I T');
                                                             LOADER('strelka.bmp',STRELKA);
                                                             PUTIMAGE(X,Y,STRELKA^,XORPUT);
                                                             REPEAt
                                                             CH:=READKEY;
                                                             PUTIMAGE(X,Y,STRELKA^,XORPUT);
                                                             IF CH=#0 THEN CH:=READKEY;
                                                             CASE CH OF
                                                             #80:IF Y=300 THEN Y:=100 ELSE Y:=Y+100;
                                                             #72:IF Y=100 THEN Y:=300 ELSE Y:=Y-100;
                                                             END;
                                                             PUTIMAGE(X,Y,STRELKA^,XORPUT);
                                                             UNTIL CH=#13;
                                                             CLEARDEVICE;
                                                             CASE Y OF
                                                             100:LVL1;
                                                             200:HELP;
                                                             300:HALT;
                                                             END;
                                                             closegraph;
                                                             end;

                                                             begin
                                                             zast;
                                                             while ch<>#27 do menu;
                                                             end.