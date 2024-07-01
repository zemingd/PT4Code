a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
ret = 0
for i in 0..a
  for j in 0..b
    for k in 0..c
      ret += 1 if (i * 10 + j * 2 + k) * 50 == x
    end
  end
end

puts ret
