S = gets.chomp
T = gets.chomp

count = 0
(0..2).each do |n|
  count += 1 if S[n] == T[n]
end

puts count