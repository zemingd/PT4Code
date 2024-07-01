n = gets.chomp.split("").map(&:to_i)

if(n[0] == 7 || n[1] == 7 || n[2] == 7)
  puts "Yes"
else
  puts "No"
end
