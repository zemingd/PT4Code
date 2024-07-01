x, y = gets().chomp.split("\s")

list = {'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

if x == y
  puts '='
elsif list[x] > list[y]
  puts '>'
else
  puts '<'
end