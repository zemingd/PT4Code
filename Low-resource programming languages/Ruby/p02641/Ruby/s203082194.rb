X, N = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

nums = [*1..100] - P

puts nums.min_by { |x| (X - x).abs }
