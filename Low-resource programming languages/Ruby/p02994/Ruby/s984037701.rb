n, l = gets.chomp.split(' ').map(&:to_i)
array = []
n.times.with_index do |i|
  array << l + i
end
taste_array = array.map { |num| num.abs }
target_apple = taste_array.index(taste_array.min)
array.delete_at(target_apple)
print array.sum.to_i
