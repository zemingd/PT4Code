a, b = gets.chomp.split
puts case a <=> b
when -1
  '<'
when 1
  '>'
else
  '='
end