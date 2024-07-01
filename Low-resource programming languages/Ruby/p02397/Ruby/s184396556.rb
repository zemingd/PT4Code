while line = gets do
  a, b = line.split.map &:to_i
  break if a == 0 && b == 0
  puts [ a, b ].sort.join(' ')
end

