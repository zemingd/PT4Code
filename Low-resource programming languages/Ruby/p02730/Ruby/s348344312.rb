def ifkai(s, st, en)
  for i in 0..((en-st-1)/2)
    return 0 if s[st+i] != s[en-i]
  end
  return 1
end

s = gets.chomp.split("")
ln = s.length
if ifkai(s,0,ln-1)*ifkai(s,0,(ln-1)/2-1)*ifkai(s,(ln+3)/2-1,ln-1) == 1
  puts "Yes"
else
  puts "No"
end