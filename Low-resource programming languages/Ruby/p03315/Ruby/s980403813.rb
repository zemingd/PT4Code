s = STDIN.read
res = 0
for l in s.chars
  if l == '+'
    res += 1
  else
    res -= 1
  end
end
puts res
