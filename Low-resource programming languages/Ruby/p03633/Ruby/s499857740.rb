n = gets.to_i
t = n.times.map{gets.to_i}.sort!

def gcd a, b
  if b > a
    a, b = b, a
  end
  while a % b != 0
    tmp a % b
    a = b
    b = tmp
  end
  return b
end

def lcm a, b
  a * b / gcd(a, b)
end

while t.length > 1
	i = t.length - 1
	while i > 0
		t[i-1] = lcm t[i], t[i-1]
		t.delete_at i
    i = i - 2
	end
end

puts t[0]