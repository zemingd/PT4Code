gets
input = gets.chomp.split(' ')
k = input.reverse + input

p = k.select.with_index do |item, index|
  item if index % 2 == 1
end
puts p.reverse.join(' ')
