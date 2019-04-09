function [restspace,loadorder]=IniOrder(chrom,box,cargo) % chrom 是装箱的顺序，box 是箱子数据，cargo 是货物的相关数据
sizecate=size(chrom,2); % 货物的种类数
numbox=1; % 使用箱子技术
restspace=[numbox 0 0 0 box(1:3) ]; % 箱子剩余空间初始化
i=1; % 货物种类计数
k=1; % 货物计数
while i<=sizecate % 多种货物
sizecargo=cargo(chrom(i),6); % 某种货物个数
j=1;
while j<=sizecargo
tempj=j;
[temp index]=sort(restspace(:,4)); restspace=restspace(index,:);
% restspace 第一列为箱号，2~4 为剩余空间的起始点，5~7 为剩余空间各方向的长度
numspace=size(restspace,1); % 剩余空间的个数
for m=1:numspace
if cargo(1)<=restspace(m,5) % 对待放入货物的体积进行判断
if cargo(2)<=restspace(m,6)
if cargo(3)<=restspace(m,7)
% load order 第一列为箱号，第二列为第几类货物，3~5为放置起始点，6~8为货物的尺寸参数
loadorder(k,:)=[restspace(m,1) chrom(i) restspace(m,2:4) cargo(chrom(i),1:3) ];% 货物解码
% if find(loadorder(k,3:5)==loadorder(:,3:5)
% pause();
% end
k=k+1; % 总货物装载计数加1
j=j+1; % 某类货物装载加1
tempspace(1,:)=[restspace(m,1) restspace(m,2) restspace(m,3)+cargo(2) restspace(m,4) restspace(m,5) restspace(m,6)-cargo(2) restspace(m,7)]; % 产生的右空间
tempspace(2,:)=[restspace(m,1) restspace(m,2)+cargo(1) restspace(m,3) restspace(m,4) restspace(m,5)-cargo(1) cargo(2) restspace(m,7)]; % 产生的左空间
tempspace(3,:)=[restspace(m,1) restspace(m,2) restspace(m,3) restspace(m,4)+cargo(3) cargo(1) cargo(2) restspace(m,7)-cargo(3)]; % 产生上空间
% restspace(m,:)=[]; % 剔除原空间
restspace(m,:)=[];
restspace=[restspace; tempspace]; % 剩余空间
break %跳出 for m=1:numspace 循环，
end
end
end
if m==numspace&&j==tempj % 如果没有合适的箱子，则用一个新的箱子
 numbox=numbox+1;
restspace=[restspace;numbox 0 0 0 box(1:3) ];
end
end
end
i=i+1;
end
end




