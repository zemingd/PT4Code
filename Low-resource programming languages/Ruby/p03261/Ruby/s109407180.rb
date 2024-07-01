n = gets.to_i
ans = "Yes"
words = []
s = gets.chomp
words << s
last = s[-1]
(n-1).times do
  s = gets.chomp
  ans = "No" if words.index(s) || s[0] != last
  words << s
  last = s[-1]
end
puts ans
