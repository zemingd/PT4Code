def isLoop(s)
  s.reverse == s
end

s = gets.chomp
n = s.length
l = s[0..(n-1)/2-1]
r = s[(n+3)/2-1..n-1]
if isLoop(l) && isLoop(r) && isLoop(s)
  puts "Yes"
else
  puts "No"
end