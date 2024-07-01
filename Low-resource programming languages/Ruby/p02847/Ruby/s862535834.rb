a = ['SUN','MON','TUE','WED','THU','FRI','SAT'].cycle
s = gets.chomp
count = 0
s1 = ''
while s1 != s
    s1 = a.next
end
if s1 == 'SUN'
  s1 = a.next
  count += 1
end
while s1 != 'SUN'
  s1 = a.next
  count += 1
end

puts count