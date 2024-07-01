s = []
2.times do
  s << gets.chomp
end
s[0] = s[0].split(//).sort.join
s[1] = s[1].split(//).sort.reverse.join
if s.uniq.size != 1
  puts s.sort == s ? 'Yes' : 'No'
else
  puts 'No'
end