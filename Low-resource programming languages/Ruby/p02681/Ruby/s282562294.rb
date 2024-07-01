S = gets.chomp.codepoints
T = gets.chomp.codepoints

if S.size + 1 == T.size && S == T[0..-2]
  puts 'Yes'
else
  puts 'No'
end

