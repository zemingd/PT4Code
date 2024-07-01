S = gets.chomp
if S == S.reverse && S[0, S.size/2] == S.reverse[0, S.size/2]
  puts 'Yes'
else
  puts 'No'
end