N = gets.to_i
A = gets.chomp.split(' ').map(&:to_i)

flag = 0

for num1 in 0..A.size - 1 do
  val = A[num1]
  A[num1] = ''
  if A.count(val) != 0
    flag += 1
  end

  if flag != 0
    break
  end
end

if flag != 0
  puts "NO"
else
  puts "YES"
end