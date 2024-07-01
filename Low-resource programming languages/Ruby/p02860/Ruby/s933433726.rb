n =gets.to_i
s = gets.chomp.split('')
if s.size.odd?
  p 'No'
  exit
end
t = []
i=0
s.size/2.times do
  t << s[i]
  i += 1
end
t1 = []
n/2.times do
  t1 << s[i]
  i += 1
end
p t
if t == t1
  puts 'Yes'
else
  puts 'No'
end

