n, k = gets.split.map{|x|x.to_i}
s = gets.chomp.each_char.map {|x| x == '0' ? 0 : 1}

# stand, reverse, stand...
a = []

tmp = 0
i = 0

tmp = 0
while i < n && s[i] == 1
  tmp += 1
  i += 1
end
a << tmp

while i < n
  tmp = 0
  while i < n && s[i] == 0
    tmp += 1
    i += 1
  end
  a << tmp

  tmp = 0
  while i < n && s[i] == 1
    tmp += 1
    i += 1
  end
  a << tmp
end

b = Array.new(a.size + 1)
b[0] = 0

a.size.times do |i|
  b[i+1] = b[i] + a[i]
end

maximum = 0

[k * 2 + 1, b.size - 1].min.step(b.size - 1, 2) do |i|
  tmp = b[i] - b[[i - (2 * k + 1), 0].max]

  maximum = tmp if tmp > maximum
end

p maximum
