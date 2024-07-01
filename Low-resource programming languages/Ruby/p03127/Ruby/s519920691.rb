def gcd(v1, v2)
  if v1 < v2
    v1, v2 = v2, v1
  end

  m = v1 % v2
  if m == 0
    r = v2
  else
    r = gcd(v2, m)
  end

  return r
end

n = gets.chomp.to_i
t = gets.chomp.split(' ').map {|v| v.to_i}

vn = gcd(t[0], t[1])
for i in 2...t.length do
  vn = gcd(t[i], vn)
end

puts "#{vn}"
