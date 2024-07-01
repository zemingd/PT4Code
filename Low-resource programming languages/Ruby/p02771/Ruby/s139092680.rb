a, b, c = gets.strip.split.map(&:to_i)

if a == b && b == c && c == a
  puts 'no'
elsif a == b || b == c
  puts 'yes'
elsif b == c || c == a
  puts 'yes'
else
  puts 'no'
end
