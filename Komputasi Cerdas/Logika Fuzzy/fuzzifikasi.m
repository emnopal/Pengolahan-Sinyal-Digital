function xf=fuzzifikasi(x,b_mf)
    xf=[0,0,0,0,0];
    mf=[b_mf(1),b_mf(2),b_mf(3),b_mf(4),b_mf(5)];
    if (x <=mf(1))
        xf(1)=1;
    elseif (mf(1)< x && x<=mf(2))
        xf(1)=(mf(2)-x)/(mf(2)-mf(1));
        xf(2)=(x-mf(1))/(mf(2)-mf(1));
    elseif (mf(2)< x && x<=mf(3))
        xf(2)=(mf(3)-x)/(mf(3)-mf(2));
        xf(3)=(x-mf(2))/(mf(3)-mf(2));
    elseif (mf(3)< x && x<=mf(4))
        xf(3)=(mf(4)-x)/(mf(4)-mf(3));
        xf(4)=(x-mf(3))/(mf(4)-mf(3));
    elseif (mf(4)< x && x<=mf(5))
        xf(4)=(mf(5)-x)/(mf(5)-mf(4));
        xf(5)=(x-mf(4))/(mf(5)-mf(4));
    elseif x >= mf(5)
        xf(5)=1;
    end
end