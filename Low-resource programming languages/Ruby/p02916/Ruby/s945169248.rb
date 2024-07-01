#p gets.to_i ** 3

n = gets.to_i

a = gets.split(" ").map{|x| x.to_i}
b = gets.split(" ").map{|x| x.to_i}
c = gets.split(" ").map{|x| x.to_i}

temp = -1
sum = 0
n.times do |i|
  sum += c[a[i] - 2] if a[i] == temp + 1
  temp = a[i]
  sum += b[a[i] - 1]
end
p sum
