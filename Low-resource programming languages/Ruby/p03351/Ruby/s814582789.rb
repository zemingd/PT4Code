a, b, c, d = gets.split.map(&:to_i)
if (c - a).abs <= d
  puts "Yes"
elsif (c - b).abs <= d && (b - a).abs <= d
  puts "Yes"
else
  puts "No"
end