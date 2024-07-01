N, K =  gets.split.map(&:to_i)
xs = []
N.times do |i|
  a, b = gets.split.map(&:to_i)
  xs <<  [a] * b
end

puts xs.flatten[K - 1]