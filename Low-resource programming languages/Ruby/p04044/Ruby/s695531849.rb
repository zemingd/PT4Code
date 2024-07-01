L, N = gets.split(" ").map(&:to_i)

s = N.times.map{ gets.chomp }.sort

puts s.join