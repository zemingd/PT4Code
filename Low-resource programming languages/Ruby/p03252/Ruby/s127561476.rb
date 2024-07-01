S = gets.chomp.split("").to_a
T = gets.chomp.split("").to_a

if S.uniq.length == T.uniq.length then
  puts "Yes"
else
  puts "No"
end
