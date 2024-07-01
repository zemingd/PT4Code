m = gets.split("").map(&:to_i)
if m[0] == m[1] && m[1] == m[2]
  puts "Yes"
elsif m[1] == m[2] && m[2] == m[3]
  puts "Yes"
else
  puts "No"
end