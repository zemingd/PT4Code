square = []
(1..1000).each do |i|
  square << i**2
end
x = gets.split.join.to_i
puts square.member?(x) ? 'Yes': 'No'