N = gets.to_i
A = gets.split.map(&:to_i)

H = Hash.new(0)

N.times do |i|
  H[A[i] - 1] += 1
  H[A[i]    ] += 1
  H[A[i] + 1] += 1
end

puts H.values.sort[-1]