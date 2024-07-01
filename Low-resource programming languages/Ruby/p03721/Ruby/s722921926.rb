n, k = gets.split.map(&:to_i)
A = []
B = []

n.times do
  a, b = gets.split.map(&:to_i)
  A << a
  B << b
end

sum = 0
array = Array.new(10**5) { 0 }
n.times do |i|
  array[A[i]] = B[i]
  sum += B[i]
  if sum >= k
    break
  end
end

sum = 0
array.each do |v|
  sum += v
  if sum >=k
    puts v
    break
  end
end
