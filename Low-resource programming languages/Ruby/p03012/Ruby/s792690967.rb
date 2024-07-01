a=gets.chomp.to_i
b=gets.split.map(&:to_i)

m << (b.length-1).times do |f|
  (b[0..m].sum-b[m+1..(b.length-1)].sum).abs
end

puts m.min