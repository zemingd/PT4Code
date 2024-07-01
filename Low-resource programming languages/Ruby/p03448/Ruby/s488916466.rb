a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
i = 0
count = 0
while i <= a
  j = 0
  while j <= b
    k = 0
    while k <= c
      if i * 500 + j * 100 + k * 50 == x
        count += 1
      end
      k += 1
    end
    j += 1
  end
  i += 1
end
puts count