L,N = gets.split.map(&:to_i)

s = L.times.map{ gets.chomp }.sort

puts s.join
