_, K = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

puts l.sort_by(&:-@).take(K).inject(&:+)