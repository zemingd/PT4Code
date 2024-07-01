N = gets.to_i
A = gets.split.map(&:to_i)

ret = []
N.times do |n|
  # ret << (A.index(n) + 1)
  ret[A[n]] = n + 1  
end

puts ret.join(' ')