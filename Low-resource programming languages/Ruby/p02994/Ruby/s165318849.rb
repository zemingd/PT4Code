n, l = gets.split.map(&:to_i)
apples = l.upto(n + l - 1)

puts apples.inject(:+) - apples.min { |a, b| a.abs <=> b.abs }