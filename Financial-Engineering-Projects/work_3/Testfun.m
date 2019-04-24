function A=Testfun(B)
if B(1)<B(2)
    A(1,:)=[1,B(1)];
end

for i=2:size(B,2)-1
    if B(i)<B(i-1)&&B(i)<B(i+1)
        A(end+1,:)=[i B(i)];
    end
end

if B(end)<B(end-1)
    A(end+1,:)=[size(B,2),B(end)];
end