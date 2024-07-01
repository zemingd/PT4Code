n = gets.to_i; s = Array.new(n)
res = 0; i = 0
n.times { |i|
s[i] = gets.to_i
  res += s[i]
}
if res % 10 != 0
  puts res
else
  s.sort.each { |val|
    res -= val; break  unless val % 10 == 0
  }
  puts res
end
