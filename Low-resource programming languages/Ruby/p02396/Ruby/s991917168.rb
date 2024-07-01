ARGF.each.with_index(1) do |line, i|
  x = line.to_i

  break if x == 0

  puts "Case #{i}: #{x}"
end