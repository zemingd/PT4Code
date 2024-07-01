S = gets.chomp
T = gets.chomp

ans = 3.times.count do |i|
  S[i] == T[i]
end

puts ans
