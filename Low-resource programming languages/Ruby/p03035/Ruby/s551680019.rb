A, B = gets.split.map(&:to_i)
puts B if A >= 13
puts (B / 2) if (A >= 6) && (A <= 12)
puts 0 if A <= 5