a,b,c,d = gets.chomp.split(" ").map(&:to_i)

if (a - c).abs <= d || ((a - b).abs <= d && (b - c).abs <= d) then
  puts "Yes"
else
  puts "No"
end
