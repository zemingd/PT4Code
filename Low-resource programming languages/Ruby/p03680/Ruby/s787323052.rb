n = gets.to_i
a = Array.new
a << 0
n.times do
  a << gets.to_i
end
i = 1
c = 0
n.times do
  i = a[i]
  c += 1
  if i == 2
    puts c
    exit
  end
end

p -1