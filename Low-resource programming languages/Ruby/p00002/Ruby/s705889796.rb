while g = gets  do
  line = g.chomp.split(" ")
  first = line[0].to_i
  second = line[1].to_i

  n = first + second

  digit = n.to_s.length

  puts digit
end