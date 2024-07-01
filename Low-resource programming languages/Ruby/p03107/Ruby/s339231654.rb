S = gets.chomp
zero_count, one_count = S.chars.partition do |ch|
  ch == '0'
end.map(&:size)
puts [zero_count, one_count].min * 2
