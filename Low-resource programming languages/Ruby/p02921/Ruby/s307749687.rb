S = gets.chomp
T = gets.chomp

cnt = 0
3.times do |i|
  cnt += 1 if S[i] == T[i]
end

p cnt