n = gets.to_i
s = gets.chomp.chars
ans = s[0]
t = s[0]
(1..n-1).each do |i|
  u = s[i]
  if u != t
    ans += u
    t = u
  end
end
puts ans.size