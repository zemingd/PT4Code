s = gets.chomp

array = s.split("")

answer = 'Good'
(array.size - 1).times do |i|
  answer = 'Bad' if array[i] == array[i + 1]
end

puts answer