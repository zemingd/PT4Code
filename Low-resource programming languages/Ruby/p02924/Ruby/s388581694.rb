N = gets.to_i

ret = 0
N.times do |n|
  ret += (N - n) % (n + 1)
end

puts ret