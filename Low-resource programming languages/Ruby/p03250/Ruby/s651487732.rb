a, b, c = gets.strip.split.map(&:to_i).sort.reverse
puts (a * 10) + b + c
