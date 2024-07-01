a, b = gets.chomp.split(" ").map(&:to_s)
c = (a + b).to_i
sqc = Math.sqrt(c).floor

if (sqc*sqc) == c
  puts "Yes"
else
  puts "No"
end