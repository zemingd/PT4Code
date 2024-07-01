a, b, x = gets.chomp.split.map(&:to_i)
puts (x-a).positive? && (b - (x - a)).positive? ? 'YES' : 'NO'