x=gets.to_i
max = 0
if x == 1
  puts 1
else
  for i in 2..(Math.sqrt(x))
    beki = 0
    j = 0
    while beki < x
      beki = i**j
      j += 1
    end
    beki = i**(j-2)
    if max < beki
      max = beki
    end
  end
  puts max
end
