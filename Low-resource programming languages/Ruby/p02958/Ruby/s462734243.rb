n = gets.chomp.to_i
input = gets.chomp.split(' ').map(&:to_i)
count = 0
input.each_with_index do |input_item, index|
  count += 1 unless input_item == index + 1
end
if count <= 2
  puts 'YES'
else
  puts 'NO'
end
