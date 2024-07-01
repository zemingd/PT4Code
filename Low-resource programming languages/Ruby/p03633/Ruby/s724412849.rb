def lcm(a, b)
  a, b = b, a if a > b
  c = b
  i = 2
  while c % a != 0
    c = b * i
    i += 1
  end
  c
end

n = gets.chomp.to_i
ts = n.times.map do
  gets.chomp.to_i
end

c = ts.inject do |a, b|
  lcm(a, b)
end

p c