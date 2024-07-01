number_str = gets.chomp
number_int = number_str.to_i
sum = number_str.split('').map(&:to_i).inject(:+)
puts(number_int % sum == 0 ? 'Yes' : 'No')
