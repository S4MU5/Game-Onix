uses wingraph,wincrt;
VAR A,B,X,Y:INTEGER;
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
 VAR CH:CHAR;
 BEGIN
 OUTTEXTXY(350,100,'è é å é ô ú   à É ê é ä ì');
 OUTTEXTXY(100,200,'ÑÇàÜÖçàÖ: ÇÇÖêï - W');
 OUTTEXTXY(100,250,'Ççàá            -');
 OUTTEXTXY(100,300,'ÇèêÄÇé          -');
 OUTTEXTXY(100,350,'ÇãÖÇé           -');
OUTTEXTXY(100,400,'ëíêÖãúÅÄ: ÇÇÖêï  - ëíêÖãäÄ ÇÇÖêï');
OUTTEXTXY(100,450,'Ççàá             - ëíêÖãäÄ Ççàá');
OUTTEXTXY(100,500,'ÇèêÄÇé           - ëíêÖãäÄ ÇèêÄÇé');
OUTTEXTXY(100,500,'ÇãÖÇé            - ëíêÖãäÄ ÇãÖÇé');
OUTTEXTXY(350,600,'è ê à å Ö ó Ä ç à Ö');
OUTTEXTXY(100,700,'ëíêÖãúÅÄ çÖ êÄÅéíÄÖí çÄ ìêéÇçüï:1,...');
OUTTEXTXY(100,750,'Öëãà ìèêÄÇãÖçàÖ çÖ êÄÅéàíÄÖí, íé çìÜçé çÄÜÄíú äãÄÇàòì CAPSLOCK');
OUTTEXTXY(100,800,'Ñãü ÇõïéÑÄ àá åÖçû èéåéôà çÄÜåàíÖ ESCAPE');
 REPEAT

 UNTIL CH=#13;
 END;

 procedure zast;
 var a,b,x,y:integer;
 f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,logo:pointer;
 begin
 x:=100;
 y:=100;
 a:=9;
 b:=11;
 initgraph(a,b,'');
 loader('f1.bmp',f1);
 loader('f2.bmp',f2);
 loader('f3.bmp',f3);
 loader('f4.bmp',f4);
 loader('f5.bmp',f5);
 loader('f6.bmp',f6);
 loader('f7.bmp',f7);
 loader('f8.bmp',f8);
 loader('f9.bmp',f9);
 loader('f10.bmp',f10);
 loader('f11.bmp',f11);
 loader('f12.bmp',f12);
 loader('f13.bmp',f13);
 loader('logo.bmp',logo);


 putimage(x,y,f1^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f2^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f3^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f4^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f5^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f6^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f7^,xorput);
 delay(100);
  cleardevice;
  putimage(x,y,logo^,xorput);
  delay(2000);
 putimage(x,y,f8^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f9^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f10^,xorput);
 delay(100);
   cleardevice;
 putimage(x,y,f11^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f12^,xorput);
 delay(100);
  cleardevice;
 putimage(x,y,f13^,xorput);
 delay(1000);
 cleardevice;
 delay(2000);

  cleardevice;


 end;
  PROCEDure LVL2;
  const lab: array[1..30,1..56] of integer = ((1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1),
(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
var m,n,xch,ych,ich,jch,xz,yz,iz,jz,a,b,r,i,j,golda,x,y,dx,dy,sx,sy,xg,yg:integer;
    timer,time:longint;
    gold,chlb,hero,chl,stena,cvoboda,zlo,chlr,chll:pointer;
     ch:char;
     begin
a:=9;
b:=11;
initgraph(a,b,'');
xg:=450;
yg:=200;
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
loader('zlo.bmp',zlo);
loader('cvoboda.bmp',cvoboda);
loader('stena.bmp',stena);

hero:=chll;
randomize;

ch:=#0;


   time:=1;
     for i:=12 to 18 do
                     for j:=1 to 6 do //begin
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
                      putimage(x,y,zlo^,xorput);
                      yz:=y;
                      xz:=x;
                      iz:=i;
                      jz:=j;
                      end;
                      END;
                      END;

repeat


{IF (XCH = XG) AND (YCH = YG) THEN BEGIN
GOLDA:=1;
PUTIMAGE(XG,YG,GOLD^,XORPUT);
END;
if time>2000000000 then time:=1;

if time mod 20 = 0 then begin

putimage(xz,yz,zlo^,xorput);

 if (xz<xch) and (jz+1<56) and (lab[iz,jz+1]<>1)then begin
                                                    xz:=xz+dx;
                                                    jz:=jz+1;
                                                    end;

 if (xz>xch) and (jz-1>0) and (lab[iz,jz-1]<>1)  then begin
                                                      xz:=xz-dx;
                                                      jz:=jz-1;
                                                      end;
 if (yz<ych) and (iz+1<30) and (lab[iz+1,jz]<>1) then begin
                                                     yz:=yz+dy;
                                                     iz:=iz+1;
                                                     end;
 if (yz>ych) and (iz-1>0) and (lab[iz-1,jz]<>1)   then begin
                                                       yz:=yz-dy;
                                                       iz:=iz-1;
                                                       end;

putimage(xz,yz,zlo^,xorput);

                               end;}




if keypressed then begin
for i:=ICH-3 to ICH+3 do
                     for j:=JCH-3 to JCH+3 do //begin
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
                      putimage(x,y,zlo^,xorput);
                      yz:=y;
                      xz:=x;
                      iz:=i;
                      jz:=j;
                      end;
                      END;
                      END;
 ch:=readkey;
 if ch=#0 then ch:=readkey;
putimage(xch,ych,hero^,xorput);
// putimage(xch,ych,chl^,xorput);
 case ch of

 #87: IF LAB[ICH-1,JCH]<>1 THEN               begin

                                               ych:=ych-dy;
                                               ich:=ich-1;
					       hero:=chlb;
                                               putimage(xch,ych,hero^,xorput);								 putimage(xch,ych,chlb^,xorput);
                                               end;

 #83: if (ich+1<30) and (lab[ich+1,jch]<>1)  then begin
                                               ych:=ych+dy;
                                               ich:=ich+1;
                                               hero:=chl;
                                               end;
 #68: if (jch+1<56) and (lab[ich,jch+1]<>1)  then begin
                                               xch:=xch+dx;
                                               jch:=jch+1;
                                               hero:=chll;
                                               end;
 #65: if (jch-1>0) and (lab[ich,jch-1]<>1)  then begin
                                               xch:=xch-dx;
                                               jch:=jch-1;
                                               hero:=chlr;
                                               end;
 end;
 putimage(xch,ych,hero^,xorput);
 end;


 for i:=ICH-3 to ICH+3 do
                     for j:=JCH-3 to JCH+3 do //begin
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
                      putimage(x,y,zlo^,xorput);
                      yz:=y;
                      xz:=x;
                      iz:=i;
                      jz:=j;
                      end;
                      END;
                      END;



 IF (GOLDA<>1) AND (ich=1) and (jch=43) THEN BEGIN
                                       ICH:=30;
                                       JCH:=4;
                                       END;
delay(10);
until  ((ich=1) and (jch=43))  or (ch=#27) or ((xz=xch) and (yz=ych));




                       if (GOLDA=1) AND (ich=1) and (jch=43) then begin
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
                       if
                           (xz=xch) and (yz=ych)  then begin
                           cleardevice;
                           outtextxy(500,500,' Y O U     L O S E');
                           delay(1000);
                           readkey;
                            end;
closegraph;
end;


 procedure LVL1;

const lab: array[1..30,1..56] of integer = ((1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1),
(1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,3,0,1,0,0,1,0,4,0,0,0,1,0,1,0,4,1,4,1,0,1,0,0,0,0,0,0,0,0,0,1),
(1,3,1,0,1,0,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1,0,0,0,0,1,0,0,0,1,1,1,1,0,1,0,1,0,0,0,1,1,0,1,0,1,1,1,1,1,0,1,1,1,0,1),
(1,0,1,0,0,1,1,1,0,1,0,0,0,1,1,1,0,1,0,1,1,0,1,1,1,1,1,0,1,0,1,0,0,0,1,0,0,1,1,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,3,1),
(1,0,0,1,1,0,0,0,0,1,0,1,1,1,4,1,0,1,0,0,1,0,0,0,1,0,4,0,0,0,1,0,1,1,1,1,0,0,0,0,0,1,4,1,1,1,1,1,1,1,1,1,0,1,0,1),
(1,0,1,0,0,0,1,1,1,1,0,1,0,1,0,1,0,1,1,3,1,0,1,0,1,0,1,1,1,0,1,0,0,1,0,0,0,1,1,1,1,1,0,1,0,1,3,0,1,0,1,0,0,1,0,1),
(1,0,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,1,1,1,1,0,0,0,1,0,0,0,1,0,0,1,0,1,0,0,0,1,0,1,0,1,0,0,1,0,1,1,0,1,0,1),
(1,0,1,0,0,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,1,0,0,0,1,0,1,0,1,1,1,0,3,1,0,1,0,0,0,1,0,1,0,1,0,1,1,0,1,0,0,0,0,1,0,1),
(1,0,4,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,0,0,1,0,1,1,1,1,1,1,1,0,1,0,1,0,0,0,0,1,4,1,1,1,1,0,1),
(1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,0,0,1,0,0,0,0,1,0,1,0,1,0,1,0,1,1,0,0,0,0,0,0,1),
(1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,4,0,1,0,1,0,0,1,0,0,0,0,0,1,0,1,0,1,1,1,1,0,1,0,1,0,0,0,1,0,0,0,0,1,1,1,1,0,1),
(1,0,1,0,0,0,1,0,1,0,1,0,1,1,1,1,1,0,0,0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0,4,0,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1),
(1,0,1,1,1,1,1,0,1,0,3,0,1,0,0,0,1,1,1,0,0,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,0,0,0,1,0,1,0,1,0,0,0,0,1,0,0,0,1,1,0,1),
(1,0,0,0,0,0,1,0,0,0,1,0,1,0,1,0,1,0,0,1,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,1,0,1,1,0,0,0,0,1,0,1,1,1,1,1,1,1,1,0,0,1),
(1,0,0,0,1,0,1,1,1,1,0,0,0,0,1,0,0,0,0,1,0,1,0,1,0,3,0,0,1,0,1,1,1,0,0,1,0,1,0,0,1,1,1,0,3,0,0,0,1,0,0,0,1,0,0,1),
(1,1,1,0,1,0,0,0,0,1,0,1,0,1,1,1,1,1,0,0,0,1,0,1,1,1,1,1,1,0,1,0,0,0,0,1,0,1,0,0,4,0,1,0,1,0,1,0,0,0,1,0,1,1,0,1),
(1,4,0,0,1,0,0,1,0,0,0,0,1,1,0,0,0,1,1,1,1,1,1,0,0,0,1,0,1,0,1,0,0,1,1,1,1,1,1,1,1,0,0,1,0,0,1,1,0,1,0,0,0,1,0,1),
(1,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,0,1,0,0,0,0,0,0,1,1,1,0,1,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,1,0,0,0,0,0,1),
(1,0,1,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,0,1,0,0,1,3,1,0,0,0,1,0,1,0,0,1,4,1,1,1,1,0,1,0,1,0,0,1,0,1,1,1,0,1,1,1,1,1),
(1,0,1,1,1,0,1,0,0,0,1,0,1,0,1,1,1,1,1,1,0,1,1,0,0,0,1,0,1,0,0,0,3,1,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1),
(1,0,1,0,4,0,1,1,1,1,1,0,1,0,0,1,0,0,0,4,0,1,0,0,1,0,1,0,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1),
(1,0,1,0,1,1,1,0,0,0,1,0,0,0,1,1,0,1,1,1,1,1,0,1,0,1,1,1,1,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1),
(1,0,1,0,3,0,1,0,1,0,1,1,1,0,0,1,0,1,0,0,0,0,0,0,3,0,0,0,1,0,1,0,1,1,1,1,1,0,1,0,1,1,1,0,0,0,0,4,1,1,1,0,1,1,0,1),
(1,0,1,1,1,0,1,0,1,0,0,0,0,0,1,1,0,1,0,1,1,1,1,1,1,1,0,0,1,0,1,0,1,0,0,0,0,1,1,0,0,0,1,0,1,1,1,1,1,0,1,0,0,0,0,1),
(1,0,0,1,0,0,0,0,1,0,1,1,0,1,0,1,0,1,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,1,0,0,1,1,1,1,0,1,0,1,0,0,0,0,1,0,0,0,0,1),
(1,1,0,1,1,0,1,1,1,0,0,1,1,1,0,1,0,1,1,1,1,1,1,1,0,1,1,0,1,0,1,1,1,1,1,1,0,0,1,0,1,0,1,1,1,0,1,1,1,1,1,0,1,1,1,1),
(1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,4,0,0,0,1,0,0,1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,3,0,0,0,0,0,0,1),
(1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1),
(1,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,3,1,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,1),
(1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
var kgold,kzlo,xch,ych,ich,jch,a,b,r,i,j,golda,x,y,dx,dy,sx,sy:integer;
    timer,time:longint;
    gold,chlb,hero,chl,stena,cvoboda,chlr,chll:pointer;
     ch:char;
     go:boolean;
     nzlo,xz,yz,iz,jz: array [1..15] of integer;
     zlo: array [1..15] of pointer;
     xg,yg,xgold: array [1..20] of integer;
     begin


sx:=100;
sy:=100;
golda:=1;
dx:=25;
dy:=25;
loader('hero.bmp',chl);
loader('gold1.bmp',gold);
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

hero:=chll;
randomize;

ch:=#0;
kgold:=0;
kzlo:=0;
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
       LAB[I,J]:=0;
       xgold[kgold]:=0;
       END;
   end;
   end;
   time:=1;
   golda:=0;
   go:=false;

repeat

for i:=1 to kgold do begin
IF (XCH = XG[i]) AND (YCH = YG[i]) and (xgold[i]=0)  THEN BEGIN
xgold[i]:=1;
GOLDA:=golda+1;
PUTIMAGE(XG[i],YG[i],GOLD^,XORPUT);
END;
end;

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


 if keypressed then begin
 ch:=readkey;
 if ch=#0 then ch:=readkey;

putimage(xch,ych,hero^,xorput);
// putimage(xch,ych,chl^,xorput);
 case ch of
 #87: IF LAB[ICH-1,JCH]<>1 THEN  begin

                                               ych:=ych-dy;
                                               ich:=ich-1;
					       hero:=chlb;
                                               putimage(xch,ych,hero^,xorput);                                          putimage(xch,ych,chlb^,xorput);
                                               end;

 #83: if (ich+1<30) and (lab[ich+1,jch]<>1)  then begin
                                               ych:=ych+dy;
                                               ich:=ich+1;
                                               hero:=chl;
                                               end;
 #68: if (jch+1<56) and (lab[ich,jch+1]<>1)  then begin
                                               xch:=xch+dx;
                                               jch:=jch+1;
                                               hero:=chll;
                                               end;
 #65: if (jch-1>0) and (lab[ich,jch-1]<>1)  then begin
                                               xch:=xch-dx;
                                               jch:=jch-1;
                                               hero:=chlr;
                                               end;
 end;
 putimage(xch,ych,hero^,xorput);
//  putimage(xch,ych,chl^,xorput);
                      end;


delay(10);
until  ((ich=1) and (jch=43))  or (ch=#27) or (go=true);




                       if (GOLDA=1) AND (ich=1) and (jch=43) then begin
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
                       if
                           go=true   then begin
                           cleardevice;
                           outtextxy(500,500,' Y O U     L O S E');
                           delay(1000);
                           readkey;
                            end;

end;
                                                             begin
                                                             a:=9;
                                                             b:=11;
                                                             X:=50;
                                                             Y:=100;
                                                             initgraph(a,b,'');
                                                             cleardevice;

                                                             ZAST;
                                                             outtextxy(100,100,'à É ê Ä í ú');
                                                             outtextxy(100,200,'è é å é ô ú');
                                                             outtextxy(100,300,'Ç õ â í à');
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
                                                             end.
