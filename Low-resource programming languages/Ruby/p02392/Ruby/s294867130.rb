x = ARGF.gets
a, b, c = x.split.map(&:to_i)

if a < b && b < c
  puts "Yes"
else
  puts "No"
end