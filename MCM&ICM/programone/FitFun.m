function fitness=FitFun(cmax,restspace,loadorder,box,chrom,order)
[temp index]=sort(restspace(:,1));
restspace=restspace(index,:); %第一列为箱号，2~4 为剩余空间的起始点，5~7 为剩余空间各方向的长度
m=max(restspace(:,1)); %多少个箱子
restvolume=zeros(m,1); %每个箱子总剩余空间
for i=1:m
tempspace=restspace(find(restspace(:,1)==1),:);
num=size(tempspace,1); %第 i 个箱子中货物的个数
for j=1:num
for j=1:num
temp=0; 
temp=tempspace(j,5)*tempspace(j,6)*tempspace(j,7); %求体积
restvolume(i)=restvolume(i)+temp; %每个箱子剩余空间的总和
end
utilization(i)=restvolume(i)/(box(1)*box(2)*box(3));
end
temp=0;
for i=1:size(order,2)
temp=temp+exp(-(chrom(i)-order(i))^2);
end
fitness=cmax/m+sum(utilization.^2)*temp; %适应度,使适应度值最大
end
