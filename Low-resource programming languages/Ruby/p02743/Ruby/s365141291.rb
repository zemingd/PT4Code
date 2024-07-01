a,b,c = gets.chomp.split(" ").map(&:to_i)

if a + b - c + 2 * Math.sqrt(a * b) < 0 then
  puts "Yes"
else
  puts "No"
end
