s = gets.chomp
l = 0
r = s.length
while true
  if s[l] == "A"
    break
  end
  l += 1
end
while true
  if s[r-1] == "Z"
    break
  end
  r -= 1
end
puts r - (l + 1) + 1
