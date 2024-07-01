N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
OP = M.times.map{ gets.split.map(&:to_i) }.sort_by(&:last).reverse
OP.inject(0) do |offset, (b,c)|
  flag = b.times.all? do |i| 
    A[offset + i] = c if A[offset + i] < c
  end
  if flag
    offset + b
  else
    break
  end
end
puts A.inject(&:+)