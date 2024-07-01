S = gets.chomp.split("").to_a
T = gets.chomp.split("").to_a

if (S-T).uniq.length == (T-S).uniq.length then
  puts "Yes"
else
  puts "No"
end
