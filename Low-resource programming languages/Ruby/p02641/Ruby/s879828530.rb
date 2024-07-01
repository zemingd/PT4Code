X,N = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

puts ([*1..100] - P).min_by {|n| (X - n).abs  }