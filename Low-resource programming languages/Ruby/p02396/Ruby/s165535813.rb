x = []
loop do
  x << gets.to_i
  break if x.last == 0
end
x.pop
x.each_with_index { |v,i| puts "Case #{ i + 1}: #{ v }" }