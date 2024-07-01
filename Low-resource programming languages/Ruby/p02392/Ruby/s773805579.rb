a, b, c = ARGF.gets.split.map(&:to_i)

if a < b && b < c
  puts "Yes"
else
  puts "No"
end