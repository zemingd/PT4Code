d, n = gets.chomp.split(" ").map(&:to_i)

if d == 0
  puts 1 * n
elsif d == 1
  puts 100 * n
elsif d == 2
  puts 10000 * n
end
