k = gets.chomp.to_i
a,b = gets.chomp.split(' ').map(&:to_i)
switch = false
while a <= b
  if a%k == 0
    switch = true
    break
  end
  a += 1
end
if switch
  puts "OK"
else
  puts "NG"
end