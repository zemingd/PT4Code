n = gets.chop.to_i
p = gets.split(" ").join.to_i
q = gets.split(" ").join.to_i

a = 0
b = 0

arr = [*1..n]
list = arr.permutation(n).map {|v| v.join.to_i}

list.each_with_index do |v, i|
  a = i+1 if v == p
  b = i+1 if v == q
end

res = 0
if a > b
  res = a - b
else
  res = b - a
end

puts res