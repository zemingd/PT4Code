N = gets.to_i
A = gets.chomp.split(' ').map(&:to_i)

count = 0

for num1 in 0..A.size - 1 do
  for num2 in 0..A.size - 1 do
    if A[num1] == A[num2] && num1 != num2
      count += 1
    end
  end
  if count != 0
    break
  end
end

if count != 0
  puts "NO"
else
  puts "YES"
end