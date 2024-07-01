a, b, c, d = gets.chomp.split.map(&:to_i)
if (a - c).abs <= d || (a - b) <= d and (a - c) <= d
  puts "Yes"
else
  puts "No"
end
