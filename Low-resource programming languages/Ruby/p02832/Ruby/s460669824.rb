N = gets.to_i
A = gets.split.map(&:to_i)

n = 1
A.each{|a|
	n += 1 if a == n
}

p(n==1 ? -1 : N-n+1)
