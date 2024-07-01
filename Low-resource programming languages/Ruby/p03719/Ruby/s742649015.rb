def between(a, b, c)
  puts a <= c && c <= b ? "YES" : "NO"
end

a, b, c= gets.chomp.split(" ").map(&:to_i)
between(a, b, c)