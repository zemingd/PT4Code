a, b, c = STDIN.gets.split.map(&:to_i)

if a < b && b < c then
  puts 'Yes'
else
  puts 'No'
end