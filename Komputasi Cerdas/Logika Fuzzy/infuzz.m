function uU=infuzz(in1,in2)
    uE=[in1(1),in1(2),in1(3),in1(4),in1(5)];
    uDE=[in2(1),in2(2),in2(3),in2(4),in2(5)];
    uU=[0,0,0,0,0];
    rbf=[1 1 1 2 3;
        1 1 2 3 4;
        1 2 3 4 5;
        2 3 4 5 5;
        3 4 5 5 5;];
    
    for i=1:5
        for j=1:5
            k=rbf(i,j);
            uU(k)=max(uU(k),min(uE(i),uDE(j)));
        end
    end
end