n = gets.to_i
ary = []
n.times do
  ary << gets.chomp.to_i
end
 
i = 1
cnt = 1
 
n.times do
  if ary[(i-1)] == 2
    puts cnt
    exit
  else
    i = ary[ary[i-1]]
    cnt += 1
  end
end
 
puts -1