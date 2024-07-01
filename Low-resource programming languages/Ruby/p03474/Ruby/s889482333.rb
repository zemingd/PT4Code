a,b = gets.split.map(&:to_i)
n = gets.chomp
if n[a] == "-" && n.count("-") == 1
  puts "Yes"
else
  puts "No"
end