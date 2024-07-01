s = ARGF.gets.split("").to_a.map(&:to_i)
n = s.size

f0 = 0
f1 = 0
for i in 0...n
  c0 = i%2
  if s[i] != c0
    f0 += 1
  end

  c1 = (i+1)%2
  if s[i] != c1
    f1 += 1
  end
end

puts [f0, f1].min
