N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
OP = M.times.map{ gets.split.map(&:to_i) }.sort_by(&:last).reverse
ans = N.times.inject(0) do |s,i|
  if !OP.empty? && A[i] < OP[0][1]
    s += OP[0][1]
    OP[0][0] -= 1
    OP.shift if OP[0][0].zero?
  else
    s += A[i]
  end
  s
end
puts ans