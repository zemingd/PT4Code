eval"L=#"+`tr ' ' ,`
L.sort!
i=0
L.map{k=0;i=1+i.times{|j|k+=1while L[k]&.<L[i]+L[j];$.+=k+~i}}
p$.