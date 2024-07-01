n = gets.chomp.to_i
a = [0]
v = [false] * n
n.times do
  a << gets.chomp.to_i
end

i = 1
c = 0
loop do
  v[i] = true
  i = a[i]
  c += 1

  if i == 2
    puts c
    break
  end
  if v[i]
    puts '-1'
    break
  end
end
