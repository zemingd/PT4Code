a, b, c, d = gets.split.map(&:to_i)
while a > 0 and c > 0 do
  c -= b
  if c <= 0
    break
  end

  a -= d
end

if a > 0
  puts 'Yes'
else
  puts 'No'
end