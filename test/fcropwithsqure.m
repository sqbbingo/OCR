% fcropwithsqure.m是根据面积切割的函数
function fcrop = fcropwithsqure(imglab,eqmed,maxx)
    [m,n] = find(maxx == imglab);
    minc = min(n);
    maxc = max(n);
    minr = min(m);
    maxr = max(m);
    if 0.5*(maxc-minc) > 0.5*(maxr-minr)
        minra = 0.5*(maxr-minr) - minr;
    else
        minra = 0.5*(maxc-minc) - minc;
    end
    ratio = sqrt(2) / 2;
    point(1) = round(0.5*(maxr-minr) + minr);
    point(2) = round(0.5*(maxc-minc) + minc);
    rup = point(1) - fix(minra * ratio);
    rdw = point(1) + fix(minra * ratio);
    cle = point(2) - fix(minra * ratio);
    cri = point(2) + fix(minra * ratio);
    fcrop = uint8(zeros((rdw-rup),(cri-cle)));
    for i = rup : rdw
        for j = cle : cri
            fcrop(i - rup +1,j - cle + 1) = uint8(eqmed(i,j));
        end
    end
end