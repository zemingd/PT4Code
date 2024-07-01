n = gets.to_i
a = [0]
n.times do
  a << gets.to_i
end

i = 1
c = 0
loop do
  c += 1
  i = a[i]
  if i  == 2
    puts c
    exit
  end
  break if c == n
end
puts -1
