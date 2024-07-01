eval'A,B,C,D='+`tr ' ' ,`
f=->n{n-n/C-n/D+n/C.lcm(D)}
p f[B]-f[A-1]