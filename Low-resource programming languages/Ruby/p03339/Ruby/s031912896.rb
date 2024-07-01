n=gets.to_i
s=gets.chomp

result = n
(0..(n-1)).each do |z|
  x = s.slice(0, z)
  y = s.slice(z+1, n)
  e = x.count('W')
  w = y.count('E')
  sum = e+w
  if result > sum
    result = sum
  end
  if result == 0
    break
  end
end

puts result