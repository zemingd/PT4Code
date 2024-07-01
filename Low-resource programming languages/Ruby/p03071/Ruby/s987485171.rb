a, b = gets.chomp.split.map(&:to_i)

if a == b
  puts 2 * a
elsif a > b
  puts (2 * a) - 1
elsif b > a
  puts (2 * b) -1
end

