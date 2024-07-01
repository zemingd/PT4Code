h = gets.to_i
ene = []
i = 1
count = 1
while h > 1
  count += 2**i
  h /= 2
  i += 1
end
puts count