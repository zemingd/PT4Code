N = gets.to_i
a = N.times.map{ (gets.chomp.to_i) -1 }
cnt = 1
i = a[0]
a[0] = -1

while true
  if a[i] == 1
    cnt += 1
    break
  elsif a[i] == -1
    cnt = -1
    break
  else
    tmp = i
    i = a[i]
    a[tmp] = -1
    cnt += 1
  end
end

puts cnt