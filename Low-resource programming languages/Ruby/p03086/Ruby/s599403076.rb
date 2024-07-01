s = gets.chomp
ans = 0
cnt = 0
(0..s.size-1).each do |i|
  if s[i] == "A" || s[i] == "G" || s[i] == "C" || s[i] == "T"
    cnt += 1
  else
    ans = cnt if ans < cnt
    cnt = 0
  end
end
ans = cnt if ans < cnt

puts ans