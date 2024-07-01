S = gets.chomp.split("").to_a
T = gets.chomp.split("").to_a

if (S-T).length == (T-S).length then
  puts "Yes"
else
  puts "No"
end
