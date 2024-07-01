N = gets[0].to_i
A = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)
C = gets.split(' ').map(&:to_i)
sum = 0
first_flag = true

for index in A do
  if (first_flag)
    last_index = index
    first_flag = false
  end
  if index - last_index == 1
    sum += C[last_index - 1]
  end
  last_index = index
end

puts sum + B.inject(:+)