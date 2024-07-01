a, b, c = gets.split.map(&:to_i)

half = (a + b + c) / 2
puts [a, b, c].include?(half) ? 'Yes' : 'No'
