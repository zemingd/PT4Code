X, Y = gets.split.map(&:to_i)

if X <= Y
  puts [Y - X, Y - X.abs + 1].min
elsif X == Y
  puts 0
elsif X.abs == Y.abs
  puts 1
elsif X > Y
  puts Y.abs - X + 1
end
