k = gets.chomp.to_i
odd = 0
even = 0
(1..k).each do |i|
  i.odd? ? odd += 1 : even += 1
end
puts odd * even