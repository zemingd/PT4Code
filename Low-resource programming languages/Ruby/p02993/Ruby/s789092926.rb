S = gets
ans = 0
4.times do |i|
  flg = 0
  4.times do |j|
    if S[i] == S[j]
      flg += 1
    end
  end
  ans += (flg > 1) ? 1 : 0
end
if ans == 0
  puts "Good"
else
  puts "Bad"
end