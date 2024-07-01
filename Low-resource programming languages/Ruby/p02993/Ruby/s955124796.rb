s = gets.chomp!
flag = false
t = ""
s.size.times do |v|
  if t == s[v]
    flag = true
    break
  end
  t = s[v]
end

if flag
  puts 'Bad'
else
  puts 'Good'
end
