N = gets.chomp.split("")
flag = false

if [N[0], N[1], N[2]].uniq.length == 1 || [N[1], N[2], N[3]].uniq.length == 1
  flag = true
end

if flag
  print('Yes')
else
  print('No')
end