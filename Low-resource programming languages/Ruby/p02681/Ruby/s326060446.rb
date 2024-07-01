S = gets.chomp
T = gets.chomp
if S[0..-1] == T[0..-2] && S.length + 1 == T.length
  puts "Yes"
else
  puts "No"
end