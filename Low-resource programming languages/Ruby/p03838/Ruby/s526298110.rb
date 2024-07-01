X, Y = gets.split.map(&:to_i)

if X <= Y
  puts Y - X
elsif X == Y
  puts 0
elsif X.abs == Y.abs
  puts 1
elsif X > Y
  puts X - Y + 2
end
