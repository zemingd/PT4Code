N, X = gets.split(' ').map(&:to_i)
sum = 0
min = nil
N.times do
  m = gets.to_i
  min = [(min || m), m].min
  sum += m
end

rest = X - sum
puts rest / min + N
