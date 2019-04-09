clc;
clear;
a1=load('data_1.txt');
b1=a1(1:2:end);
c1=a1(2:2:end);

a2=load('data_2.txt');
b2=a2(1:2:end);
c2=a2(2:2:end);

a3=load('data_3.txt');
b3=a3(1:2:end);
c3=a3(2:2:end);

a4=load('data_4.txt');
b4=a4(1:2:end);
c4=a4(2:2:end);

a5=load('data_5.txt');
b5=a5(1:2:end);
c5=a5(2:2:end);

a6=load('data_6.txt');
b6=a6(1:2:end);
c6=a6(2:2:end);

a7=load('data_7.txt');
b7=a7(1:2:end);
c7=a7(2:2:end);

a8=load('data_8.txt');
b8=a8(1:2:end);
c8=a8(2:2:end);

a9=load('data_9.txt');
b9=a9(1:2:end);
c9=a9(2:2:end);

x1=-65.65;
y1=18.33;
x2=-66.03;
y2=18.22;
x3=-66.07;
y3=18.44;
x4=-66.16;
y4=18.40;
x5=-66.73;
y5=18.47;

b1=(b1+67.2)/360*pi.*cos(c1)*2*6378.137;c1=(c1-17.9)/360*2*pi*6378.137;
b2=(b2+67.2)/360*pi.*cos(c2)*2*6378.137;c2=(c2-17.9)/360*2*pi*6378.137;
b3=(b3+67.2)/360*pi.*cos(c3)*2*6378.137;c3=(c3-17.9)/360*2*pi*6378.137;
b4=(b4+67.2)/360*pi.*cos(c4)*2*6378.137;c4=(c4-17.9)/360*2*pi*6378.137;
b5=(b5+67.2)/360*pi.*cos(c5)*2*6378.137;c5=(c5-17.9)/360*2*pi*6378.137;
b6=(b6+67.2)/360*pi.*cos(c6)*2*6378.137;c6=(c6-17.9)/360*2*pi*6378.137;
b7=(b7+67.2)/360*pi.*cos(c7)*2*6378.137;c7=(c7-17.9)/360*2*pi*6378.137;
b8=(b8+67.2)/360*pi.*cos(c8)*2*6378.137;c8=(c8-17.9)/360*2*pi*6378.137;
b9=(b9+67.2)/360*pi.*cos(c9)*2*6378.137;c9=(c9-17.9)/360*2*pi*6378.137;
x1=(x1+67.2)/360*pi.*cos(y1)*2*6378.137;y1=(y1-17.9)/360*2*pi*6378.137;
x2=(x2+67.2)/360*pi.*cos(y2)*2*6378.137;y2=(y2-17.9)/360*2*pi*6378.137;
x3=(x3+67.2)/360*pi.*cos(y3)*2*6378.137;y3=(y3-17.9)/360*2*pi*6378.137;
x4=(x4+67.2)/360*pi.*cos(y4)*2*6378.137;y4=(y4-17.9)/360*2*pi*6378.137;
x5=(x5+67.2)/360*pi.*cos(y5)*2*6378.137;y5=(y5-17.9)/360*2*pi*6378.137;

%半径均为18.67
%第一个圆心坐标为(149.8,47.9)
numx1=29.2:0.1:66.6;
numy1_1=-sqrt(18.67^2-(numx1-47.9).^2)+149.8;
%第二个圆心坐标(105.3,35.6)
numx2=86.6:0.1:124.0;
numy2_1=sqrt(18.67^2-(numx2-105.3).^2)+35.6;
numy2_2=-sqrt(18.67^2-(numx2-105.3).^2)+35.6;
%第三个圆心坐标(115.4,60.1)
numx3=96.7:0.1:134.1;
numy3_1=sqrt(18.67^2-(numx3-115.4).^2)+60.1;
numy3_2=-sqrt(18.67^2-(numx3-115.4).^2)+60.1;
%第四个圆心坐标为(104.3,55.7)
numx4=85.6:0.1:123.0;
numy4_1=sqrt(18.67^2-(numx4-104.3).^2)+55.7;
numy4_2=-sqrt(18.67^2-(numx4-104.3).^2)+55.7;
%第五个圆心坐标为(48.6,63.5)
numx5=30.0:0.1:67.3;
numy5_1=sqrt(18.67^2-(numx5-48.6).^2)+63.5;
numy5_2=-sqrt(18.67^2-(numx5-48.6).^2)+63.5;

%area_1


plot(b1,c1,'k',x5,y5,'r*',numy1_1,numx1,'b-.',numx2,numy2_1,'b-.',numx2,numy2_2,'b-.',numx3,numy3_1,'b-.',numx3,numy3_2,'b-.',numx4,numy4_1,'b-.',numx4,numy4_2,'b-.',numx5,numy5_1,'b-.',numx5,numy5_2,'b-.',b2,c2,'k',b3,c3,'k',b4,c4,'k',b5,c5,'k',b6,c6,'k',b7,c7,'k',b8,c8,'k',b9,c9,'k',x1,y1,'r*',x2,y2,'r*',x3,y3,'r*',x4,y4,'r*');
xlabel('xlabel');
ylabel('ylabel');
axis([0,150,0,70]);

longitude=18.2264;
latitude=-65.6808;
latitude=(latitude+67.2)/360*pi.*cos(longitude)*2*6378.137;longitude=(longitude-17.9)/360*2*pi*6378.137;
%半径26
totalnumpoint=0;

for i=1:477
tmp=sqrt((b1(i)-latitude)^2+(c1(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:582
tmp=sqrt((b2(i)-latitude)^2+(c2(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:677
tmp=sqrt((b3(i)-latitude)^2+(c3(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:134
tmp=sqrt((b4(i)-latitude)^2+(c4(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:69
tmp=sqrt((b5(i)-latitude)^2+(c5(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:914
tmp=sqrt((b6(i)-latitude)^2+(c6(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:339
tmp=sqrt((b7(i)-latitude)^2+(c7(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:70
tmp=sqrt((b8(i)-latitude)^2+(c8(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

for i=1:32
tmp=sqrt((b9(i)-latitude)^2+(c9(i)-longitude)^2);
if tmp<=26.33
    totalnumpoint=totalnumpoint+1;
end
end

totalnumpoint

