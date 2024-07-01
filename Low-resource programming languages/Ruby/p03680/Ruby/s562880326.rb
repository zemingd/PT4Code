n = gets.to_i
ary = []
n.times do
  ary << gets.to_i
end
num = ary[0]
count = 2
(n-1).times do
  if ary[num-1] == 2
    puts count
    break
  end
  num = ary[num-1]
  count += 1
end
if count == n-1+2
  puts -1
end