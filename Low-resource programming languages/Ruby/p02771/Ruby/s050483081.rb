a, b, c = gets.strip.split.map(&:to_i)

array = [a, b, c].sort
if a == b && b == c && c == a
  puts 'no'
elsif a == b || b == c || c == a
  puts 'yes'
end
