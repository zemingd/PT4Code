n = gets.to_i
array = gets.chomp.split(' ').map(&:to_i).select(&:even?)
count = array.size
until array.empty?
  array = array.map { |i| i / 2 }.select(&:even?)
  count += array.size
end
puts count