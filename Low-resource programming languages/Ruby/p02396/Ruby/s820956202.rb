ARGF.each.with_index(1) do |num, i|
  z = num.to_i
  break if z == 0
  puts "Case #{i}: "#{z}"
end