a,b,c = gets.strip.split.map(&:to_i)
if a == b && b == c && a == c
  puts 'No'
elsif a != b && b != c && a != c
  puts 'No'
else
  puts 'Yes'
end
  