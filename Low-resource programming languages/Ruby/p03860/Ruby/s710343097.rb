ss = [*'A'..'Z']
sss = [*'a'..'z']

s = gets.chomp.to_s
if s.length < 1 || s.length > 100
  exit
end

if !ss.include?(s[0]) || !sss.include?(s[1])
  exit
end

x = s[0]

puts("A#{x}C")