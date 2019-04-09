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

selx1=-66.7969;
sely1=18.3697;
selx2=-66.8619;
sely2=18.4733;
selx3=-66.1389;
sely3=18.3672;
selx4=-66.0503;
sely4=18.3350;
selx5=-66.0422;
sely5=18.2847;
selx6=-65.8331;
sely6=18.3756;
selx7=-65.6808;
sely7=18.2264;

plot(b1,c1,'k',x5,y5,'r*',selx1,sely1,'b*',selx2,sely2,'k*',selx3,sely3,'k*',selx4,sely4,'k*',selx5,sely5,'b*',selx6,sely6,'b*',selx7,sely7,'k*',b2,c2,'k',b3,c3,'k',b4,c4,'k',b5,c5,'k',b6,c6,'k',b7,c7,'k',b8,c8,'k',b9,c9,'k',x1,y1,'r*',x2,y2,'r*',x3,y3,'r*',x4,y4,'r*');
xlabel('longitude');
ylabel('latitude');
legend('Road network','Delivery Location','Optimal location','Abandoned location')

x1=(x1+67.2)/360*pi.*cos(y1)*2*6378.137;y1=(y1-17.9)/360*2*pi*6378.137;
x2=(x2+67.2)/360*pi.*cos(y2)*2*6378.137;y2=(y2-17.9)/360*2*pi*6378.137;
x3=(x3+67.2)/360*pi.*cos(y3)*2*6378.137;y3=(y3-17.9)/360*2*pi*6378.137;
x4=(x4+67.2)/360*pi.*cos(y4)*2*6378.137;y4=(y4-17.9)/360*2*pi*6378.137;
x5=(x5+67.2)/360*pi.*cos(y5)*2*6378.137;y5=(y5-17.9)/360*2*pi*6378.137;
selx1=(selx1+67.2)/360*pi.*cos(sely1)*2*6378.137;sely1=(sely1-17.9)/360*2*pi*6378.137;
selx5=(selx5+67.2)/360*pi.*cos(sely5)*2*6378.137;sely5=(sely5-17.9)/360*2*pi*6378.137;
selx6=(selx6+67.2)/360*pi.*cos(sely6)*2*6378.137;sely6=(sely6-17.9)/360*2*pi*6378.137;

distance=sqrt((x3-x4)^2+(y3-y4)^2)





