function [r,p]=MultDivd(x,o)
i=1; %the position of the operator
while 1  
    if length(o)<i %when the position is larger than the length of o, break out of the loop
        p=o;
        break;
    end
    if strcmp(o(i),'*')==1|| strcmp(o(i),'/')==1
    %find if the last operation is multiply or division
        if strcmp(o(i),'*')==1
            m=num2str(x(i));
            n=num2str(x(i+1));
            mult=multiplication(m,n);
            tmp=str2double(mult);
            x=mergeElement(x,i,tmp);
            o=mergeOp(o,i);
        end
        if length(o)>=i
        if strcmp(o(i),'/')==1
            tmp=x(i)/x(i+1);
            x=mergeElement(x,i,tmp);
            o=mergeOp(o,i);
        end
        end
    else
        i=i+1;
    end
end
r=x;