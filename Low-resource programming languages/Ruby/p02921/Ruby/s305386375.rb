S = gets.chomp
T = gets.chomp

ans = 0

2.times do |i|
    ans += 1 if S[i] == T[i]
end

puts ans