s = gets.split("").map(&:to_i)
ans = true
for i in 0..2
  if s[i] == s[i+1]
    ans = false
  end
end
if ans
  puts "Good"
else
  puts "Bad"
end