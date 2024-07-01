array = gets.chomp.split(' ').map(&:to_i)

array.sort!

puts array[-1]-array[0]