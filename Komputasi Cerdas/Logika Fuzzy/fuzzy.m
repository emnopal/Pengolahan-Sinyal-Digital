function u=fuzzy(in)
    e=in(1);
    de=in(2);
    mE=[-1,-0.05,0,0.05,1];%membership Error
    mDE=[-1,-0.05,0,0.05,1];%membershib delta Error
    uE=fuzzifikasi(e,mE);
    uDE=fuzzifikasi(de,mDE);
    uU=infuzz(uE,uDE);
    u=defuzzifikasi(uU);
end