function u=defuzzifikasi(in)
    uU=[in(1),in(2),in(3),in(4),in(5)];
    B=[-24,-12,0,12,24];
    num=B(1)*uU(1)+B(2)*uU(2)+B(3)*uU(3)+B(4)*uU(4)+B(5)*uU(5);
    denum=uU(1)+uU(2)+uU(3)+uU(4)+uU(5);
    u=num/denum;
end