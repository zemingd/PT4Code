N=gets.to_i
S=gets
pc=S.count ?1
X=S.to_i(2)
f=[0]
1.upto(N){f<<f[_1%('%b'%_1).count(?1)]+1}
(N-1).downto(0){x=2**_1
y=X^x
p y==0 ? 0 : f[y%=X>y ? pc-1 : pc+1]+1}