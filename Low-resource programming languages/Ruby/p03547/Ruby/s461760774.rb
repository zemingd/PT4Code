x, y = gets.chomp.split(' ').map(&:hex)
if x == y
  puts '='
elsif x > y
  puts '>'
else
  puts '<'
end