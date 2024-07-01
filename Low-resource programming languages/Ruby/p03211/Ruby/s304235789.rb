S = gets
length = S.length

ans = 753
(0..length-3).each do |i|
  num = S[i,3].to_i
  ans = [(753 - num).abs, ans].min
end

puts(ans)