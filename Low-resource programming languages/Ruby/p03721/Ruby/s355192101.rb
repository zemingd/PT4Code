n, k = gets.split.map(&:to_i)
A = []
B = []

n.times do
  a, b = gets.split.map(&:to_i)
  A << a
  B << b
end

sum = 0
array = []
n.times do |i|
  B[i].times do
    array << A[i]
  end
  sum += B[i]
  if sum >= k
    break
  end
end

array.sort!
puts array[k - 1]
