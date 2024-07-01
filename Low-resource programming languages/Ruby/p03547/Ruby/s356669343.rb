x, y = gets.split
case x <=> y
when 1
  puts '>'
when 0
  puts '='
when -1
  puts '<'
end