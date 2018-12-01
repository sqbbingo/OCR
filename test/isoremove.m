% isoremove.m是孤立点去除的函数
function g = isoremove(f)
g = f;
[m,n] = size(f);
p = zeros(m+2, n+2);
for i = 1 : m
    for j = 1 : n
        p (i+1,j +1) = f(i,j);
    end
end
p(1,2:n+1) = f(1,:);
p(m+2,2: n+1) = f(m,:);
p(:,1) =p(:,2);
p(:,n+2) = p(:,n+1);
% figure,imshow(p);
for i = 2 : m+1
    for j = 2 : n+1
        if (p(i,j)==0 && p(i,j-1)==1 && p(i,j+1)==1 && p(i+1,j)==1 && ...
                p(i-1,j)==1)
            g(i-1,j-1) = 1;
        end
        if (p(i,j)==1 && p(i-1,j)==0 && p(i+1,j)==0 && p(i,j-1)==0 && ...
                p(i,j+1)==0)
            g(i-1,j-1) = 0;
        end
        if((p(i,j)==1&&p(i-1,j)==0&&p(i,j+1)==0 && p(i,j-1)==0)|| ...
           (p(i,j)==1&&p(i-1,j)==0&&p(i+1,j)==0 && p(i,j-1)==0)||...
           (p(i,j)==1&&p(i-1,j)==0&&p(i+1,j)==0 && p(i,j+1)==0)||...
           (p(i,j)==1&&p(i+1,j)==0&&p(i,j+1)==0 && p(i,j-1)==0))
            g(i-1,j-1) = 0;
        end
        if ((p(i,j)==0&&p(i-1,j)==1&&p(i,j+1)==1 && p(i,j-1)==1)|| ...
           (p(i,j)==0&&p(i-1,j)==1&&p(i+1,j)==1 && p(i,j-1)==1)||...
           (p(i,j)==0&&p(i-1,j)==1&&p(i+1,j)==1 && p(i,j+1)==1)||...
           (p(i,j)==0&&p(i+1,j)==1&&p(i,j+1)==1 && p(i,j-1)==1))
            g(i-1,j-1) = 1;
        end
    end
end