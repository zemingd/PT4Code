s = gets.strip
ans = 0
4.times do |i|
  s[i] == '+' ? ans+=1 : ans-=1
end
puts ans