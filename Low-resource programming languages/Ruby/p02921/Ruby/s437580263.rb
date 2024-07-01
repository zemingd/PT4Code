S = gets.chomp
T = gets.chomp

cnt = 0
S.chars.each.with_index do |_,i|
  cnt += 1 if S[i] == T[i]
end

puts cnt