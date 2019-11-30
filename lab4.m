function my()




s11='195251 СПб Политехническая 29'
s22='1 2 3 4 100'
s33='6 7 8 9 0.1 0.2 0.3 0.4 200'
s44='0.5 0.6 0.7 0.8 300'

%{ПУНКТ №1------------------------------------------------------------------------------%}
n=0;
for s = 1.0:1: length(s11)
  if(strcmp(s11(s),' ')==0)
      n=n+1;
  end
end
disp(n);

%{КОНЕЦ ПУНКТА №1------------------------------------------------------------------------------%}







%{ПУНКТ №2------------------------------------------------------------------------------%}
m=1;
k=length(s11);
s1='';
s2='';
s3='';
r=1;

while s11(m)~=' '
m=m+1;
end

while s11(k)~=' '
k=k-1;
end

s1(1)=' ';

for s = 2:1:m
 s1(s)=s11(s);
  end


r=1;
for s = m:1:k
 s2(r)=s11(s);
 r=r+1;
  end


r=1;
for s = k+1:1:length(s11)
 s3(r)=s11(s);
 r=r+1;
  end
s123=strcat(s3,s2,s1) ;

%{КОНЕЦ ПУНКТА №2------------------------------------------------------------------------------%}






%{ПУНКТ №3------------------------------------------------------------------------------%}


stest=cell(1,length(s11));
s=1;
for s = 1.0:1: length(s11)
  if(strcmp(s11(s),'1')==1)
  stest{s}='Один';
  elseif (strcmp(s11(s),'2')==1)
stest{s}='Два';
  elseif(strcmp(s11(s),'3')==1)
 stest{s}='Три';
  elseif(strcmp(s11(s),'4')==1)
 stest{s}='×Четыре';
  elseif(strcmp(s11(s),'5')==1)
 stest{s}='Пять';
  elseif(strcmp(s11(s),'6')==1)
 stest{s}='Шесть';
  elseif(strcmp(s11(s),'7')==1)
  stest{s}='Семь';
  elseif(strcmp(s11(s),'8')==1)
 stest{s}='Восемь';
  elseif(strcmp(s11(s),'9')==1)
  stest{s}='Девять';
  elseif(strcmp(s11(s),'0')==1)
 stest{s}='Ноль';
    else
   stest{s}=s11(s);
  end
end

r=1;
str=cell(1,4);
for s = 2.0:1: length(stest)
     if(strcmp(stest{s},' ')==0)
     str{r}=strcat(str{r},stest{s})
     else
     r=r+1;
     end
end



m=strjoin(str)

%{КОНЕЦ ПУНКТА №3------------------------------------------------------------------------------%}




%{ПУНКТ №4------------------------------------------------------------------------------%}
r=1;
for s = 1.0:1: length(s11)
  if(strcmp(s11(s),'1')==1)
  mass(r)=1;
  elseif (strcmp(s11(s),'2')==1)
 mass(r)=2;
  elseif(strcmp(s11(s),'3')==1)
 mass(r)=3;
  elseif(strcmp(s11(s),'4')==1)
  mass(r)=4;
  elseif(strcmp(s11(s),'5')==1)
 mass(r)=5;
  elseif(strcmp(s11(s),'6')==1)
 mass(r)=6;
  elseif(strcmp(s11(s),'7')==1)
  mass(r)=7;
  elseif(strcmp(s11(s),'8')==1)
  mass(r)=8;
  elseif(strcmp(s11(s),'9')==1)
 mass(r)=9;
  elseif(strcmp(s11(s),'0')==1)
 mass(r)=0;
    else
  r=r-1;
  end
  r=r+1;
end
disp(mass)

%{КОНЕЦ ПУНКТА №4------------------------------------------------------------------------------%}


%{ПУНКТ №5------------------------------------------------------------------------------%}

f=fopen('C:\Users\User\Desktop\Ëàáû è ðàñ÷åòû\in15(5).txt','rt+') 
fprintf(f,'1 2 3 4 100\n6 7 8 9 0.1 0.2 0.3 0.4 200\n0.5 0.6 0.7 0.8 300');
fclose(f)

%{КОНЕЦ ПУНКТА №5------------------------------------------------------------------------------%}

%{ПУНКТ №6------------------------------------------------------------------------------%}
f=fopen('C:\Users\User\Desktop\Ëàáû è ðàñ÷åòû\in15(5).txt');
M1=fscanf(f,'%g', [1 4]);
R1=fscanf(f,'%g', [1]);
M2=fscanf(f,'%g', [1 4]);
L1=fscanf(f,'%g', [1 4]);
R2=fscanf(f,'%g', [1]);
L2=fscanf(f,'%g', [1 4]);
R3=fscanf(f,'%g', [1]);

M=[M1',M2']'


R=[R1,R2,R3]

L=[L1',L2']'

fclose(f);

%{КОНЕЦ ПУНКТА №6------------------------------------------------------------------------------%}









%{ ПУНКТ №7------------------------------------------------------------------------------%}
clear
close all
clc
tic 
File1NameExp='v01';
PictHigh1='200'; 
DirName1=['C:\Users\User\Desktop\Лабы и расчеты\'File1NameExp];
 if ~exist(DirName1)
 mkdir(DirName1);
end;
cd(DirName1);
 FileHtml=fopen(['00' File1NameExp 'lab3_15(5).htm'],'wt');
 fprintf(FileHtml,['<HTML>\n']);
 fprintf(FileHtml,['<head>\n']);
 fprintf(FileHtml,['C:\Users\User\Desktop\Лабы и расчеты\']);
 fprintf(FileHtml,['</title>\n']);
 fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n']);
 fprintf(FileHtml,['</head>\n']);
 fprintf(FileHtml,['<body>\n']);

 fprintf(FileHtml,['<center><H3>ОТЧЕТ<br>по лабораторной работе №4</h3></center>\n']);
  fprintf(FileHtml,['<center><H3>Мавриной Светланы Сергеевны</h3></center>\n']);
 n1=1;
 n2=5;
 fprintf(FileHtml,['<h3>Исходные данные</h3>\n']);
 fprintf(FileHtml,'<br>Вариант:  %-5.0f%-5.0f\n',n1,n2);
h1=figure('Name','Модельное изображение (исходное Image0)im3d');
hold on
x=[1:0.1:5];
y=sin(x*15);
plot(x,y)
hold off
FileName000=[File1NameExp 'var15(5).jpg'];
saveas(h1,FileName000);
 fprintf(FileHtml,['<br><br> Графики \n']);
 fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['<br><img src="'...
 FileName000 '" height="' PictHigh1 '" >' '\n']);
 %fprintf(FileHtml,['<a href="' FileName000 '">']);
 fprintf(FileHtml,['</a>\n']);
  fprintf(FileHtml,['<h3>Замечание:</h3>\n']);
 fprintf(FileHtml,['<h3>Миниатюрная копия графика является ссылкой на окно, в которой график отображается в масштабе 1:1.</h3>\n']);
 
 fprintf(FileHtml,['</body>\n']);
 fprintf(FileHtml,['</HTML>\n']);
 fclose(FileHtml);
disp('Вычисления завершены');
toc 
end


