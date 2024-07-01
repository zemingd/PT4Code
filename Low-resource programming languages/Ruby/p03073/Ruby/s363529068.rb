s = ARGF.gets.split("").to_a.map(&:to_i)
n = s.size

f0 = 0
f1 = 0
for i in 0...n
  c0 = i%2
  if s[i] != c0
    f0 += 1
  else
    f1 += 1
  end
end

f2 = 0
f3 = 0
for i in 0...n
  c0 = i%2
  if s[n-1-i] != c0
    f2 += 1
  else
    f3 += 1
  end
end

puts [f0, f1, f2, f3].min
