input = gets
a = input.split(" ")[0].to_i
b = input.split(" ")[1].to_i
c = input.split(" ")[2].to_i

arr = [a, b, c]

input = gets
k = input.to_i

max_index = arr.index(arr.max)

max = arr[max_index]
sum = 0

k.times do |i|
  sum += max
end

arr.delete_at(max_index)

arr.each do |i|
  sum += i
end

p sum