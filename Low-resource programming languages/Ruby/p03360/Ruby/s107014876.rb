m,*as = gets.split.map(&:to_i).sort.reverse
k = gets.to_i
p m*2**k+as.reduce(:+)
