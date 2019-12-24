%П1 СИНТЕЗИРУЕМ ИЗОБРАЖЕНИЕ
m=0;

for s = 1.0:1:800.0
   for R = 1.0:1:800.0
   X1(s,R)=uint8(m);
   end
   if(mod(s,13)==0)
m=m+1;
   end
 
end
m=image( X1 );
colormap( gray );
% конец П1 СИНТЕЗИРУЕМ ИЗОБРАЖЕНИЕ

% П2 НАКЛАДЫВАЕМ ШУМ
 R = imnoise2('exponential', 800, 800);
 Noize=double(X1).*R
 N=image( Noize );
colormap( gray );
 
%КОНЕЦ П2 
% П3 гистограмма изображения
U=figure; 
hist(Noize);
colormap( gray );
print(U,'-dpng','lab5')
 % конец П3 
 
 

% П4 Сентез объекта 1
Ob1=figure; 
m=0;

for s = 1.0:1:200.0
   for R = 1.0:1:200.0
   X2(s,R)=uint8(255);
   end
end


for A = 0.0:1:200.0
   for B = 0.0:1:200.0
   if(sqrt((A-100)^2+(B-100)^2)<=53)
       X2(A,B)=uint8(0);
   end
   end
end

for A = 0.0:1:200.0
   for B = 0.0:1:200.0
   if(sqrt((A-100)^2+(B-100)^2)<=50)
       X2(A,B)=uint8(255);
   end
   end
end
 

for A = 0.0:1:200.0
   for B = 0.0:1:200.0
   if(sqrt((A-100)^2+(B-100)^2)<=25)
       X2(A,B)=uint8(0);
   end
   end
 end

for A = 0.0:1:200.0
   for B = 0.0:1:200.0
   if(sqrt((A-100)^2+(B-100)^2)<=22)
       X2(A,B)=uint8(255);
   end
   end
 end

m=image( X2 );
colormap( gray );
print(Ob1,'-dpng','lab5p4')
 % конец П4  
 
 
%уменьшение в 2 раза П5
  Ob2=figure; 
  B = imresize(X2,1/2,'nearest');
  m1=image( B );
  colormap( gray );
  print(Ob2,'-dpng','lab5p5.1') 
  
  
  Ob3=figure; 
  B1 = imresize(X2,1/2,'bilinear');
  m2=image( B1 );
  colormap( gray );
  print(Ob3,'-dpng','lab5p5.2')
 % конец П5
  
   % синтез н. изобр. с шумом П6
  ob4=figure;
  m=0;
%фигура 1
for s = 1.0:1:800.0
   for R = 1.0:1:800.0
   X3(s,R)=uint8(m);
   end
   if(mod(s,13)==0)
m=m+1;
   end
 
end
R = imnoise2('exponential', 800, 800);
 Noize=double(X3).*R


for A = 0.0:1:800.0
   for B = 0.0:1:800.0
   if(sqrt((A-400)^2+(B-400)^2)<=53)
       Noize(A,B)=uint8(0);
   end
   end
end

for A = 0.0:1:800.0
   for B = 0.0:1:800.0
   if(sqrt((A-400)^2+(B-400)^2)<=50)
       Noize(A,B)=uint8(255);
   end
   end
end
 

for A = 0.0:1:800.0
   for B = 0.0:1:800.0
   if(sqrt((A-400)^2+(B-400)^2)<=25)
       Noize(A,B)=uint8(0);
   end
   end
end

for A = 0.0:1:800.0
   for B = 0.0:1:800.0
   if(sqrt((A-400)^2+(B-400)^2)<=23)
       Noize(A,B)=uint8(255);
   end
   end
end
%фигура 2(шестиугольник)
for A = 1.0:1:800.0
   for B = 1.0:1:800.0
  
      if ((A>=200-25*sqrt(3))&(A<=200+25*sqrt(3))&(A<=sqrt(3)*B/(1-sqrt(3))+200-250*sqrt(3)/(1-sqrt(3)))&(A<=(0-sqrt(3))*B/(1-sqrt(3))+200+150*sqrt(3)/(1-sqrt(3)))&(A>=(sqrt(3)*B)/(1-sqrt(3))+200-150*sqrt(3)/(1-sqrt(3)))&(A>=(0-sqrt(3)*B)/(1-sqrt(3))+200+250*sqrt(3)/(1-sqrt(3))))
          Noize(A,B)=uint8(0);
   end
   end 
   end 
 
for A = 0.0:1:800.0
   for B = 0.0:1:800.0
   if(sqrt((A-200)^2+(B-200)^2)<=30)
       Noize(A,B)=uint8(255);
   end
   end
end
%третья фигура
for A = 1.0:1:800.0
   for B = 1.0:1:800.0
  
      if ((A<=700)&(A>=600)&(B>=600)&(B<=700))
          Noize(A,B)=uint8(0);
   end
   end 
   end 

  N=image( Noize );
  colormap( gray );
 
 %конец  П6
  
%Пункт 7  
 ob5=figure;
  m=401.0;
  Perem=0;
Noize1=Noize;
Noize2=Noize;
for A = 401.0:1:800.0
    m=m-1;
   for B = 1.0:1:800.0
  Perem=Noize(A,B);
  Noize(A,B)=Noize(m,B);
  Noize(m,B)=Perem;
   end
   end
    

  N=image( Noize );
  colormap( gray );
  print(ob5,'-dpng','lab5p7')
  %Пункт 7 Конец   
 
 
 %Пункт 8  
 ob6=figure;
  m=401.0;
  Perem=0;

for A = 401.0:1:800.0
    m=m-1;
   for B = 1.0:1:800.0
  Perem=Noize1(B,A);
  Noize1(B,A)=Noize1(B,m);
  Noize1(B,m)=Perem;
   end
   end
    

  N=image( Noize1 );
  colormap( gray );
  print(ob6,'-dpng','lab5p8')
  %Пункт 8 Конец  
 

 % Пункт 9
 ob7=figure;
J = imrotate(Noize2,-45)
 N=image( J );
  colormap( gray );
  print(ob7,'-dpng','lab5p9')
% Пункт 9 конец
 
   % Пункт 10
 ob8=figure;
J = imrotate(Noize2,45)
 N=image( J );
  colormap( gray );
  print(ob8,'-dpng','lab5p10')
% Пункт 10 конец
 
 
 % Пункт 11
   ob9=figure;
  Background=imread('DIO.png');
    N=image( Background );
     
 %Конец 11
   % Пункт 12
   ob10=figure;
   b1=500;
 
    for A = 1.0:1:800.0
    for B = 1.0:1:800.0
  Background1(A,B)=Background(A, b1);
  b1=b1+1;
    end
     b1=500;
    end
   
    N=image( Background1 );
     colormap( gray );
 %Конец 12
  
   % Пункт 13
   ob11=figure;

 
    for A = 1.0:1:800.0
    for B = 1.0:1:800.0
  Background1(A,B)=Background1(A,B)/4;
 end
 end
    N=image( Background1 );
     Background2=Background1;
     colormap( gray );
  %Конец 13
  
  %Пункт 14
  ob12=figure; 
   %Обьект 1
  for A = 1.0:1:800.0
    for B = 1.0:1:800.0
   
       if ((A<=700)&(A>=600)&(B>=600)&(B<=700))
           Background1(A,B)=uint8(0);
    end
    end 
  end 
  
    
 %Обьект 2
 for A = 1.0:1:800.0
    for B = 1.0:1:800.0
   
       if ((A>=200-25*sqrt(3))&(A<=200+25*sqrt(3))&(A<=sqrt(3)*B/(1-sqrt(3))+200-250*sqrt(3)/(1-sqrt(3)))&(A<=(0-sqrt(3))*B/(1-sqrt(3))+200+150*sqrt(3)/(1-sqrt(3)))&(A>=(sqrt(3)*B)/(1-sqrt(3))+200-150*sqrt(3)/(1-sqrt(3)))&(A>=(0-sqrt(3)*B)/(1-sqrt(3))+200+250*sqrt(3)/(1-sqrt(3))))
           Background1(A,B)=uint8(0);
    end
    end 
    end 
  
 for A = 0.0:1:800.0
    for B = 0.0:1:800.0
    if(sqrt((A-200)^2+(B-200)^2)<=30)
        Background1(A,B)=uint8(255);
    end
    end
 end 
  
  
  
  
  
  R = imnoise2('exponential', 800, 800);
  Background1=double(Background1).*R
 
  
  N=image( Background1 );
 colormap( gray );
  print(ob11,'-dpng','lab5p14')
  %конец 14
  
  %Пункт 15
   
   
  ob13=figure; 
 Background11=imcomplement(Background1); 
imshow(Background11);
  %конец 15
 %16 п
 ob14=figure; 
    %Обьект 1
  for A = 1.0:1:800.0
    for B = 1.0:1:800.0
   
       if ((A<=700)&(A>=600)&(B>=600)&(B<=700))
           Background2(A,B)=uint8(0);
    end
    end 
  end 
  
  R = imnoise2('exponential', 800, 800);
  Background2=double(Background2).*R
 
  
  N=image( Background2 );
 colormap( gray );
  print(ob14,'-dpng','lab5p16') 
 %конец 16 
  

  %Пункт 17
   ob15=figure; 
   Z=imsubtract(Background1,Background2)
  
    
  N=image( Z );
 colormap( gray );
  print(ob15,'-dpng','lab5p17') 
  %17 конец
  
  
  
  
  
