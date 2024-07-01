numu = gets.chomp.split(' ').map(&:to_i)
array = []
numu[0].times.with_index do |i|
  array << numu[1] + i
end
taste_array = array.map { |num| num.abs }
target_apple = taste_array.index(taste_array.min)
array.delete_at(target_apple)
puts "#{array.sum}"
