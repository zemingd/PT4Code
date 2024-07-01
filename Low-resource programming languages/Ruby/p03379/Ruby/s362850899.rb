n = gets.chomp.to_i
x = gets.chomp.split(' ').map(&:to_i)

sorted_x = x.sort
median_right_i = n / 2
median_left_i = median_right_i - 1
median_left = sorted_x[median_left_i]
median_right = sorted_x[median_right_i]

if median_left == median_right
  n.times { puts median_left }
  return
end

x.map do |xi|
  xi <= median_left ? median_right : median_left
end.each { |median| puts median }
