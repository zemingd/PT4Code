n = gets.to_i
puts (1..n).map { |i| [*gets.split, i] }.sort_by { |s, p|
       [s, 100 - p.to_i]
     }.map(&:last)
