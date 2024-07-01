S = gets.chomp
N = S.length

# 0 evens
ans1 = 0
N.times do |i|
  if (i % 2 == 0 and S[i] == "1") or (i % 2 == 1 and S[i] == "0")
    ans1 += 1
  end
end

# 0 odds
ans2 = 0
N.times do |i|
  if (i % 2 == 0 and S[i] == "0") or (i % 2 == 1 and S[i] == "1")
    ans2 += 1
  end
end

puts [ans1, ans2].min