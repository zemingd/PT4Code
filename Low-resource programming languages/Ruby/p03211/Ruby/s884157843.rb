str = gets

puts ((0..str.length-2).map do |i|
  (str[i, 3].to_i - 753).abs
end).min
