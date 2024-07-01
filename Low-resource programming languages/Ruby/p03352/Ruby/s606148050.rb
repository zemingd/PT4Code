x=gets.chomp.to_i


max = 1

for i in 2..x do
  k=2
  while i**k <= x
      max = max > i**k ? max : i**k
      k += 1
  end

end

puts max