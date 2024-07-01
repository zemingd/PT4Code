n = gets.to_i
s = gets.to_s
s1 = s[0, n/2]
s2 = s[n/2, n/2]
result = "No"
if s1 == s2
  result = "Yes"
end

puts result