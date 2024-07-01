S = gets.chomp 
T = gets.chomp

ret = 0
3.times do |i|
  ret += 1 if S[i] == T[i]
end

puts ret