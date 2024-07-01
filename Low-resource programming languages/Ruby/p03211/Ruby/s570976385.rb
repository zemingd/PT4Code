S = gets.chomp.chars.each_cons(3).map(&:join).map(&:to_i)

min_diff = Float::INFINITY
S.each do |s|
  diff = (s - 753).abs
  min_diff = diff if min_diff > diff
end

puts min_diff
