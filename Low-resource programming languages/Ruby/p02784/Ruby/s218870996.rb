input = gets.split
h = input[0].to_i
n = input[1].to_i
array = gets.split
total = 0
ans = 'No'

for num in 0...n
  total += array[num].to_i
  if total >= h
    ans = 'Yes'
    break
  end
end

print ans