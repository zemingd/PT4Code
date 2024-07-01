input = gets
a = input.split(" ")[0].to_i
b = input.split(" ")[1].to_i
c = input.split(" ")[2].to_i

arr = [a, b, c]

input = gets
k = input.to_i

max_index = arr.index(arr.max)

max = arr[max_index]
sum = max

k.times do |i|
  sum += max
  max *= 2
end

arr.delete_at(max_index)

arr.each do |i|
  sum += i
end

p sum
