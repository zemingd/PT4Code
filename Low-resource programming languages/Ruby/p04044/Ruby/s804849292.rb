numbers = gets.split(' ')
n = numbers[0].to_i
l = numbers[1].to_i

array_of_input = []
while s = gets
  array_of_input.push(s.chomp)
end
for i in 0..n-2 do
  for j in i+1..n-1 do
    for m in 0..l do
      if array_of_input[i][m] < array_of_input[j][m]
        break
      elsif array_of_input[i][m] === array_of_input[j][m]
        next
      else
        tmp = array_of_input[i]
        array_of_input[i] = array_of_input[j]
        array_of_input[j] = array_of_input[i]
        break
      end
    end
  end
end

p array_of_input.join