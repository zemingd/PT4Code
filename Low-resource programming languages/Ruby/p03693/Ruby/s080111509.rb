a, b, c = gets.split.map(&:to_i)
puts ((2 * b + c) % 4 == 0 ? "YES" : "NO")