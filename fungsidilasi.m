function [ba] = dilasi( ta,la,A,help,B)
    for baris=1:ta
        for kolom=1:la
            if A(baris,kolom)==1
                for barisb=1:size(help,1)
                    if baris+help(barisb,1)>0 && kolom+help(barisb,2)>0 && kolom+help(barisb,2)<=size(A,2) && baris+help(barisb,1)<=size(A,1)
                        if (B(help(barisb,1)+2,help(barisb,2)+2))==1
                            ba(baris+help(barisb,1),kolom+help(barisb,2))=1;
                        end
                    end
                end
            end
        end
    end
end

