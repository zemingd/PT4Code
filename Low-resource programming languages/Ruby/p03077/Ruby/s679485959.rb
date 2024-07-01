N,A,B,C,D,E=$<.read.split.map(&:to_i)

a = (N+A-1)/A
b = ((N-[A,B].min*(a-1))+B-1)/B
c = ((N-[A,B,C].min*(a+b-2))+C-1)/C
d = ((N-[A,B,C,D].min*(a+b+c-3))+D-1)/D
e = ((N-[A,B,C,D,E].min*(a+b+c+d-4))+E-1)/E
puts (a+b+c+d+e)
# puts [a,b,c,d,e]