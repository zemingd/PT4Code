gets.split.map(&:to_i).each.with_index do |x, i|
  puts i + 1 if x.zero?
end