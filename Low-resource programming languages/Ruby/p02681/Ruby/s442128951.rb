s = gets.chpmp.split("")
t = gets.chpmp.split("")
flag = 1
for i in 0..(s.length-1)
  if s[i] != t[i]
    flag = 0
    break
  end
end
(flag == 1) ? (puts "Yes"):(puts "No")