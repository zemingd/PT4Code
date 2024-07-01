N,*A = $<.read.split.map &:to_i
A.sort!
p = (A[0]+A[-1]) / 2
l = ->(p) { A.inject(0) {|s,a| s+(p-a)**2} }
m = l[p]
m = n  while m > n=l[p+=1]
p -= 1
m = n  while m > n=l[p-=1]
p m