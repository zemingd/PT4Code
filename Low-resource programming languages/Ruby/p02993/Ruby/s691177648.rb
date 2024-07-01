S = gets
S << "a"
flg = 0
4.times do |i|
  if S[i] == S[i + 1]
    flg += 1
  end
end
if flg == 0
  puts "Good"
else
  puts "Bad"
end