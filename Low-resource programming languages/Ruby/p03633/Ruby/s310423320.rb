n = gets.to_i
t = n.times.map{gets.to_i}.sort!

def min a, b
  # a > b
  i = 1
  while true
    tmp = a * i
    if tmp % b == 0
      break
    else
      i = i + 1
    end
  end
  return tmp
end

while t.length > 1
	i = t.length - 1
	while i > 0
		t[i-1] = min t[i], t[i-1]
		t.delete_at i
    i = i - 2
	end
end

puts t[0]