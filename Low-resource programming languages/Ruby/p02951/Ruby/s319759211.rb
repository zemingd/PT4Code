a, b, c = gets.chomp.split.map(&:to_i)

if
  puts c - (a - b)
elsif a - c <= 0
  puts 0
end
