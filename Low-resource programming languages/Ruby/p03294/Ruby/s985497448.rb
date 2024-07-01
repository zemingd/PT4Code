N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
sum = 0
A.length.times do |i|
  sum += A[i] - 1
end
puts sum