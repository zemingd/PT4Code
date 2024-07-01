S = gets.chomp.split("").to_a
T = gets.chomp.split("").to_a

if S.uniq.length == T.uniq.length then
  if (S-T).length == (T-S).length then
    puts "Yes"
  end
else
  puts "No"
end