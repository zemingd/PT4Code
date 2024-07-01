n = gets.to_i
ary = []
n.times do
  ary << gets.chomp.to_i
end
 
i = 0
cnt = 1
 
n.times do
  if ary[i] == 2
    puts cnt
    exit
  else
    i = ary[i] - 1
    cnt += 1
  end
end
 
puts -1