array = [0 0 1 1 1 1 1 0 0 0;
         0 0 0 0 0 0 1 1 1 0;
         0 0 0 0 0 0 1 1 1 0;
         0 1 1 1 0 0 1 1 1 0;
         0 1 1 1 1 1 1 1 0 0;
         0 1 1 1 1 1 1 1 0 0;
         0 1 0 1 1 1 0 0 0 0;
         0 1 0 1 1 1 1 1 0 0;
         0 1 0 1 1 1 1 1 0 0;
         1 1 0 0 0 0 0 0 0 0];
SE = [0 1 0;1 1 1;0 1 0];
help =[[-1,-1];[-1,0];[-1 1];[0,-1];[0,0];[0 1];[1,-1];[1,0];[1 1]];
A = array;
B = SE;
[ta,la] = size(A);
[tb,lb] = size(B);

hasildilasi = fungsidilasi(ta,la,A,help,B);%dilasi
hasilerosi = fungsierosi(ta,la,A,help,B);%erosi
hasilopening = fungsidilasi(ta,la,hasilerosi,help,B);
hasilclosing = fungsierosi(ta,la,hasildilasi,help,B);