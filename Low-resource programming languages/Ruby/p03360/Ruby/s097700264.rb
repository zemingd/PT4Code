input = gets
a = input.split(' ')[0].to_i
b = input.split(' ')[1].to_i
c = input.split(' ')[2].to_i
input = gets
k = input.to_i

arr = [a, b, c]

while k > 0
  max = arr.max
  idx = arr.find_index(max)
  arr[idx] = max * 2
  k = k - 1
end

p arr.inject(0) {|sum, x| sum = sum + x }