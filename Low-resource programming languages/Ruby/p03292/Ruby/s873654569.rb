A = gets.split.map(&:to_i)
A.sort!

sum = 0
A.each_with_index do |a, idx|
  next if idx == A.size - 1
  sum += A[idx + 1] - a
end

puts sum