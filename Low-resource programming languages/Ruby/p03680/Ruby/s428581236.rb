N = gets.to_i
A = readlines.map(&:to_i)

pushed = []
a = 1

N.times do
  break if pushed.include?(a) || pushed.include?(2) 
  pushed << a
  a = A[a-1]
end

puts pushed.include?(2) ? pushed.size - 1 : -1
