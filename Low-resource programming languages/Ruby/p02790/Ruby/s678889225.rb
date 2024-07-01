input = gets.split

int1 = ''
int2 = ''
for i in 1..input[1].to_i do
  int1 += input[0]
end

for i in 1..input[0].to_i do
  int2 += input[1]
end

arr = []
arr.push(int1, int2)

arr = arr.sort
print arr[0].to_i