clear;
N=500;
norm_mean = 0;
norm_var = 1;
 

t=xlsread('TL BASED.xls');
tersi=t';
x = norm_mean+sqrt(norm_var)*tersi;

 
nob=50;
a=min(x);
b=max(x);
aa=linspace(a,b,nob);
count(size(aa))= 0;
 
for i=1:length(aa)-1
	for j=1:length(x)
		if x(j)>=aa(i) && x(j)<aa(i+1)
			count(i)=count(i)+1;
		end
    end
    y(i)=(aa(i)+aa(i+1))/2;
end
 
subplot(211);
bar(y,count(1:end-1)/N);
[bin val] = hist(x,y);
subplot(212);
bar(y,bin/N);

