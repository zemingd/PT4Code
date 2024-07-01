input = ARGF.read
x, y = input.split(' ').map(&:ord)
if x < y
  puts '<'
elsif x > y
  puts '>'
else
  puts '='
end