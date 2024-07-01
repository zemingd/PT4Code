N = gets.chomp.to_i
a = []
n = 1
while n <= N
  x = gets.chomp.split
  a << [x[0],x[1].to_i*-1,n]
  n = n + 1
end
#p a
v = a.sort
#p v
v.each do |m|
  puts m[2]
end
