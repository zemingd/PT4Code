N = gets.to_i
As = gets.split.map(&:to_i)

as = As.dup
n = 1
while i = as.index(n)
  as = as[i + 1 .. -1]
  n += 1
end
puts n == 1 ? -1 : N - (n - 1)