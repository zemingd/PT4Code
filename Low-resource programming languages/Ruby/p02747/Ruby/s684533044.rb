s = gets.chomp.split("")
flag = 1

flag = 0 if s.length % 2 == 1

if flag == 1
  for i in 0..(s.length/2-1)
    if [s[i*2], s[i*2+1]].join != "hi"
      flag = 0
      break
    end
  end
end
(flag == 1) ? (puts "Yes"):(puts "No")