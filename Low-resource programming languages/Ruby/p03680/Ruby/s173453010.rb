n = gets.to_i
n.times do |i|
  a[i] = gets.to_i
end
c = 0
l = 1
while l != 2
  c += 1
  l = a[l-1]
  if c > 100000
    puts "-1"
    exit
  end
end
p c
