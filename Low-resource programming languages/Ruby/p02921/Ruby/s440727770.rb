S = gets.chomp
T = gets.chomp
ans = 0
3.times do |i|
  if S[i] == T[i]
    ans += 1
  end
end

puts ans