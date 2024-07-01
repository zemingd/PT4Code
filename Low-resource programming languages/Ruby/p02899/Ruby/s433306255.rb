N=gets.to_i
A=gets.split.map(&:to_i)
B=Array.new(N)
N.times do |i|
  B[A[i] - 1] = i + 1
end
puts B.join(" ")