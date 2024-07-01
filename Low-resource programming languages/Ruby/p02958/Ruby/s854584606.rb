gets
arr = gets.split.map(&:to_i)

counter = 0
arr.each_with_index do |i, index|

  counter += 1 if i != index + 1
end

if counter <= 2
  puts 'YES'
else
  puts 'NO'
end