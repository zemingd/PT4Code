a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
if s.match(/^\d{#{a}}-\d{#{b}}$/)
  puts "Yes"
else
  puts "No"
end