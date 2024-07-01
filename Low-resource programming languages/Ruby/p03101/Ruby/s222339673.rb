a, b = gets.chomp.split.map(&:to_i)

array = []
a.times do
  string = gets
  array << string.chomp.split.map(&:to_i)
end
array = array.sort

i = 0
sum = 0
sum_to = 0
while sum < b
  sum = sum + array[i][1]
  sum_to = sum_to + (array[i][0] * array[i][1])
  i += 1
end
n = sum - b

p sum_to - (n * array[i - 1][0])


