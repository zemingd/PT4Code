s = gets
a, b, c = s.split(" ")
flag = (a[-1] == b[0] && b[-1] == c[0])
if flag
  puts 'YES'
else
 puts 'NO'
end
  