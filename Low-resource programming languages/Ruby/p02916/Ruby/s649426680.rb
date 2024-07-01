n = gets.to_i
a = gets.split("\s").map(&:to_i)
b = gets.split("\s").map(&:to_i)
c = gets.split("\s").map(&:to_i)
result = 0
former = -1

n.times do |i|
  result += b[i]
  if(former + 1 == a[i])
    result += c[a[i] - 2]
  end
  former = a[i]
end

puts result