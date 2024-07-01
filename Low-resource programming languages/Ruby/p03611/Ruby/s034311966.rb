gets
num_map = gets.split.map(&:to_i).sort.each_with_object(Hash.new(0)) { |n, arr| arr[n] = arr[n] + 1 }
xs = num_map.flat_map do |n, _|
  [
    num_map[n - 2] + num_map[n - 1] + num_map[n],
    num_map[n - 1] + num_map[n] + num_map[n + 1],
    num_map[n] + num_map[n + 1] + num_map[n + 2],
  ]
end

puts xs.max