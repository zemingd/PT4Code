a, b, c = gets.chomp.split.map(&:to_i)
counter = 0
divider = a
while divider <= b
  if c % divider == 0
    counter += 1
  end
  divider += 1
end
puts counter

