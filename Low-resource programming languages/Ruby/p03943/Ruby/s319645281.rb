a, b, c = gets.chomp.split.map &:to_i
puts (a == b + c) || (b == a + c) || (c == a + b) ? "YES" : "NO"