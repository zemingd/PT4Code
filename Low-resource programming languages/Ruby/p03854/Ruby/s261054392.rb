s = gets.chomp
s = s.reverse()
pre = -1
for i in 0..(s.length)
  k =  s.slice(pre+1..i)
  if k == 'maerd' or k == 'esare' or k == 'remaerd' or k == 'resare'
    pre	= i
  end
end
if (pre == s.length - 1)
  puts("YES")
else
  puts("NO")
end
