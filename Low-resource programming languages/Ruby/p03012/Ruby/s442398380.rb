a=gets.chomp.to_i
b=gets.split.map(&:to_i)

m << (b.length-1).times do |k|
  (b[0..k].sum-b[k+1..(b.length-1)].sum).abs
end

puts m.min
