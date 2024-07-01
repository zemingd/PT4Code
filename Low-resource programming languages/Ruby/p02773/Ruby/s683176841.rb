n = gets.to_i
s = []
n.times do
  a = gets.chomp
  s << a
end
s.sort!
s << ""
x = []
y = 1
for i in 0..(n-1)
  if s[i] == s[i+1]
    y += 1
  else
    x << y
    y = 1
  end
end
m = x.max
l = x.size
z = []
for j in 0..(l-1)
  if x[j] == m
    w = 0
    for k in 0..j
      w += x[k]
    end
    z << w
  end
end
q = []
z.each do |d|
  q << s[d-1]
end
puts q