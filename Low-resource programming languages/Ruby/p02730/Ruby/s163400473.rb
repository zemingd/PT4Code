s = gets.chomp
check_all = []
for i in 0..s.length-1
  if s[i] != s[-1-i]
    check_all.push("NO")
  end
end

for i in 0..((s.length-1) / 2) - 1
  if s[i] != s[((s.length-1) / 2) - 1 - i]
    check_all.push("NO")
  end
end

for i in 0..((s.length-1) / 2) - 1
  if s[i + ((s.length-1) / 2) + 1] != s[-1-i]
    check_all.push("NO")
  end
end

if check_all.length == 0
  puts "Yse"
else
  puts "No"
end