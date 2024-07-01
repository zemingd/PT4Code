a, b, c, d = gets.chomp.split(" ").map(&:to_i)

if (a - c).abs <= d or ((a - b).abs <= d and (b - c).abs <= d) then
  puts "Yes"
else
  puts "No"
end