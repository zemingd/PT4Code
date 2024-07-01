s = gets.chomp
result = 999
(s.size-2).times do |i|
  result = (753-s.slice(i,3).to_i).abs if result > (753-s.slice(i,3).to_i).abs
end
puts result