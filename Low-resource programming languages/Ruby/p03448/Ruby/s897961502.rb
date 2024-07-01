A,B,C,X=readlines.map &:to_i
M = X + 10
a = [0] * M
(A+1).times {|i| a[500*i] = 1 if 500*i<M}
b = [0] * M
(B+1).times {|i| M.times {|j| b[j+i*100] += a[j] if j+i*100<M}}
c = [0] * M
(C+1).times {|i| M.times {|j| c[j+i*50] += b[j] if j+i*50<M}}
p c[X]
