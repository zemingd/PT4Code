n = gets.to_i
s = gets.chomp
if n%2 == 0
  if s[0...s.size/2] == s[s.size/2..s.size - 1]
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
