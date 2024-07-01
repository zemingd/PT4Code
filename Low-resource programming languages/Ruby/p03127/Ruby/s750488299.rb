N,*A = $<.read.split.map(&:to_i)

q = A.uniq.sort
while 0
	a = q[0]
	z,m = q.partition{|_| _%a == 0 }
	break if m.empty?
	q = m.map{|_|_%a}.sort + z
end
p q[0]
