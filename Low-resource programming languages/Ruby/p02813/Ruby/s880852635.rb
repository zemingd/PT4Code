max = gets.to_i
inp1 = gets.split
inp2 = gets.split
arr = []
input1 = []
input2 = []
a = 0
b = 0
for num in 1..max do
  arr.push(num)
  input1.push(inp1[num-1].to_i)
  input2.push(inp2[num-1].to_i)
end
array = arr.permutation.to_a
for i in 1..array.length do
  if array[i] == input1
    a = i
  elsif array[i] == input2
    b = i
  end
end
print (a-b).abs