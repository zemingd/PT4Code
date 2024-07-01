a, b, c, d = gets.chomp.split.map(&:to_i)
if (a - c).abs <= d || (a - b).abs <= d and (a - c).abs <= d
  puts "Yes"
else
  puts "No"
end
