length = gets.to_i
array = gets.split(' ').map(&:to_i)

puts 'err!' if array.length != length

sum = 0

array.each do |d_1|
  array.each do |d_2|
    sum += d_1 * d_2
  end
end


cross_sum = array.map { |d| d ** 2 }.inject(:+)


puts ((sum - cross_sum) / 2)
