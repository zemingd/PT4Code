a, b, c = gets.chomp.split.map(&:to_i)

if
  puts b - (a - c)
elsif a - c <= 0
  puts 0
end
