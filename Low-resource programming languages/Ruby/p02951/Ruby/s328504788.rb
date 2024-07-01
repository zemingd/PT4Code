a, b, c = gets.split.map(&:to_i)
ar = a - b

if ar > 0
  if c > ar
    c -= ar
  else
    c = 0
  end
end

puts c