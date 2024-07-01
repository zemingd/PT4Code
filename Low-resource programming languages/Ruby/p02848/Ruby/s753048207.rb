n = gets.to_i
s = gets.chomp.split('')
array = ('A'..'Z').to_a

output = []

s.each do |c|
  i = array.index(c) + n
  if i >= 26
  	i -= 26
  end
  output.push(array[i])
end

puts output.join