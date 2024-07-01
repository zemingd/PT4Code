A, B, C, D = gets.split(" ").map(&:to_i)

if (A - C).abs <= D || (A - B).abs <= D && (B - C).abs <= D then
  puts "Yes"
else
  puts "No"
end