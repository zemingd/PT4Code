N = gets.to_i

m = []
ret = 0
N.times do |n|
  i = n + 1
  
  ret += ((N + 1) - i) % i
end

puts ret