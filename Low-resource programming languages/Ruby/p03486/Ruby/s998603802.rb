a = ('a'..'z').to_a
s = gets.chomp.split("")
t = gets.chomp.split("")
if s.size >= t.size
  max = t.size
else
  max = s.size
end
flag = 0

s.sort!
t = t.sort.reverse

max.times do |i|
  if a.index(s[i]) < a.index(t[i])
    puts "Yes"
    break
  elsif a.index(s[i]) > a.index(t[i])
    puts "No"
    break
  end
  flag = 1 if i == max - 1
end

if flag == 1
  if s.size >= t.size
    puts "No"
  else
    puts "Yes"
  end
end