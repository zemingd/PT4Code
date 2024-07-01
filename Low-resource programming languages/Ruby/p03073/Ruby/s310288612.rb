s = gets.chomp

ans = 0
(s.size-1).times do |i|
  if s[i] == s[i+1]
    s[i+1] = s[i+1] == '1' ? '0' : '1'
    ans += 1
  end
end

puts ans
