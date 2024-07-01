get = gets.chomp.split.map(&:to_i)
a = get[0]
b = get[1]
c = get[2]

flag = 0
loop do
  flag = a%b
  if flag == 0
    break
  end
  a = b
  b = flag
end

if c%b == 0
  puts "YES"
else
  puts "NO"
end
