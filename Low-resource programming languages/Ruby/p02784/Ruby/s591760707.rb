h, n = gets.split(' ').map!(&:to_i)

arr = gets.split(' ').map!(&:to_i)

sum = arr.inject(:+)

puts h <= sum ? 'Yes' : 'No'
