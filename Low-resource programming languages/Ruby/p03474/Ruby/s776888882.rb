a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
if s[a] == "-" && !s[0...a].include?("-") && !s[(a + 1)..(a + b + 1)].include?("-")
  puts "Yes"
else
  puts "No"
end 