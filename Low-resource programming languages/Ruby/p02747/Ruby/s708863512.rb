S = gets.chomp

list = (1..10).map { |i| 'hi' * i }

if list.include?(S)
  puts 'Yes'
else
  puts 'No'
end
