function r=multiplication(x,y)%input two string,out put a string
dotx=findDot(x);
doty=findDot(y);
dot=dotx+doty;

a=convert(x,dotx);
b=convert(y,doty);

%add zeros to the array which has the smaller size than another
lena=length(a);
lenb=length(b);

if str2double(x)>0&&str2double(y)<0
    b(lenb)='';
    lenb=lenb-1;
elseif str2double(x)<0&&str2double(y)>=0
    a(lena)='';
    lena=lena-1;
elseif str2double(x)<0&&str2double(y)<0
    a(lena)='';
    b(lenb)='';
    lena=lena-1;
    lenb=lenb-1;
end
len=lena-lenb;
if len<0
   for n=1:-len
       a(lena+n)='0';
   end
end

if len>0
   for n=1:len
       b(lenb+n)='0';
   end
end

%calculate the multiplication of each two digits
len=lena+lenb-1;
%initialize the array c
c(len)=0;
for i=1:lena
    for j=1:lenb
        c(i+j-1)=str2double(a(i))*str2double(b(j))+c(i+j-1);
    end  
end

%place the c(len+1) for the carry of the first number.
c(len+1)=0;
%calculate the carry
for i=1:len
    c(i+1)=c(i+1)+floor(c(i)/10);
    c(i)=mod(c(i),10);
end
if c(len+1)==0
    c(len+1)=[];
else
    len=length(c);
end

for i=1:len
    result(i)=num2str(c(i));
end
%convert the array to get the right sequence of the result
result=convert(result,0);
%to get the final result
r=addPoint(result,dot);




