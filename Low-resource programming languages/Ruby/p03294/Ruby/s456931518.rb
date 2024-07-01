gets
puts gets.chomp.split.map(&:to_i).map { |n| n - 1 }.reduce(0) { |a, n| a += n }