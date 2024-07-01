nums = gets.chomp.split(' ')

nums.each_with_index do |n, i|
  puts i + 1 if n == '0'
end
