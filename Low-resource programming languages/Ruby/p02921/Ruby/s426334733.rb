S = gets.chomp
T = gets.chomp
count = 0
(0...3).each do |i|
  count += 1 if S[i] == T[i]
end

puts count
