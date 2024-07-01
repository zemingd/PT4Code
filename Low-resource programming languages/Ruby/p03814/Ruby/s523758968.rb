s = gets.chomp

l = 0
r = s.size - 1
while s[l] != "A"
  l+=1
end

while s[r] != "Z"
  r-=1
end

puts r-l+1
