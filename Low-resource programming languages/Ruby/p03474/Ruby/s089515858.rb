a, b = gets.split(" ").map!{|i| i.to_i}
s = gets.chomp.chars
#p s
if s[a] == "-"
#  puts "-OK"
  cnt = 0
  for i in 0...a do
    if s[i].to_i.to_s == s[i]
      cnt += 1
#      puts "aOK"
    else
#      puts "alos"
    end
  end
  for i in a + 1..a + b do
    if s[i].to_i.to_s == s[i]
      cnt += 1
#      puts "bOK"
    else
#      puts "blos"
    end
  end
#  puts cnt
  if cnt == a + b
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
