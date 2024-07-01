a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

if /^\d{#{a}}-\d{#{b}}$/ === s
  puts "Yes"
else
  puts "No"
end