s = gets.chomp.split("").sort!
t = gets.chomp.split("").sort.reverse!
s1=""; t1=""
(s.length).times do |i|
  s1 += s[i]
end
(t.length).times do |i|
  t1 += t[i]
end
if s1 < t1 then
  puts "Yes"
else
  puts "No"
end