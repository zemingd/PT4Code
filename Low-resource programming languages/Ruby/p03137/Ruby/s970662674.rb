N, M = gets.split(' ').map(&:to_i)
x_list = gets.split(' ').take(M).map(&:to_i).sort
diff_list = Array.new(M + 10, 0)
(0...(M - 1)).each do |i|
  diff_list[i] = (x_list[i] - x_list[i + 1]).abs
end
diff_list.sort_by! { |n| -n }
puts diff_list.drop(N - 1).reduce(0) { |acc, n| acc + n }
