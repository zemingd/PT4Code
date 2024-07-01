s = gets.chomp.split('')
check = 0
s.size.times do |i|
  if i.even? || i == 0
    check += 1 if s[i] == 'h'
  else
    check += 1 if s[i] == 'i'
  end
end
if check == s.size && s.size >= 2
  puts :Yes
else
  puts :No
end