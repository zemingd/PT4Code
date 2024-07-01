a, b = gets.chomp.split.map(&:to_i)

# A, B, C = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

if (a < b)
  print b.times.map { a.to_s }.join + "\n"
else
  print a.times.map { b.to_s }.join + "\n"
end