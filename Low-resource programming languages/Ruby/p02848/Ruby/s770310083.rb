array = ('A'..'Z').to_a
array *= 2
num = gets.to_i
str = gets.chomp.split('')
tmp = str.map do |val|
  array[array.find_index(val).to_i + num]
end

puts tmp.join('')
