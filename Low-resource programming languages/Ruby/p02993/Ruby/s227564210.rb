s = gets.chomp
r = 0.upto(s.size-1) do |i|
  break true if s[i] == s[i+1]
  false
end
if r then
  puts 'Bad'
else
  puts 'Good'
end