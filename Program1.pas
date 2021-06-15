procedure LVL1;

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
var xch,ych,ich,jch,xz,yz,iz,jz,a,b,r,i,j,golda,x,y,dx,dy,sx,sy,xg,yg:integer;
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
      putimage(x,y,zlo^,xorput);
      yz:=y;
      xz:=x;
      iz:=i;
      jz:=j;
      end;

end;
   end;
   time:=1;
     for i:=1 to 30 do
                     for j:=1 to 56 do begin
                     if ((i+5>ich) or (i-5<ich)) and ((j+5>jch) or (j-5<jch)) then 
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
repeat
IF (XCH = XG) AND (YCH = YG) THEN BEGIN
GOLDA:=1;
PUTIMAGE(XG,YG,GOLD^,XORPUT);
END;

time:=time+1;
if time>2000000000 then time:=1;

if time mod 20 = 0 then begin

{putimage(xz,yz,zlo^,xorput);

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

putimage(xz,yz,zlo^,xorput);}

                               end;
                     

 if keypressed then begin
 ch:=readkey;
 if ch=#0 then ch:=readkey;
 for i:=1 to 30 do
                     for j:=1 to 56 do begin
                     if ((i+5>ich) or (i-5<ich)) and ((j+5>jch) or (j-5<jch)) then 
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

                       end;
                     end;
putimage(xch,ych,hero^,xorput);
// putimage(xch,ych,chl^,xorput);
 case ch of
 
 #87: IF LAB[ICH-1,JCH]<>1 THEN  begin

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
  for i:=1 to 30 do
                     for j:=1 to 56 do begin
                     if ((i+5>ich) or (i-5<ich)) and ((j+5>jch) or (j-5<jch)) then 
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

                       end;
                     end;
//  putimage(xch,ych,chl^,xorput);
                      end;


 IF (GOLDA<>1) AND (ich=1) and (jch=43) THEN BEGIN
                                       ICH:=30;
                                       JCH:=4;
delay(10);
until  ((ich=1) and (jch=43))  or (ch=#27) or ((xz=xch) and (yz=ych));


                                       END;

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