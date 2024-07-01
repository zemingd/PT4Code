N, K =  gets.split.map(&:to_i)
a = []
b = []
N.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
end

xs = []

for i in 0..(N - 1) do
  xs <<  [a[i]] * b[i]
end

puts xs.flatten[K - 1]