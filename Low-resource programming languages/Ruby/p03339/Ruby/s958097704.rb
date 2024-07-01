N = gets.to_i
S = gets.chomp

min = 10**6

S.size.times do |i|
  min = [min, S[0...i].count('W') + S[(i + 1)..-1].count('E')].min
end

puts min