n, A = $stdin.read.lines
n = n.to_i
A = A.split.map(&:to_i)

pats = [true, false]
(0..n-2).each do
  pats = pats.product([true, false])
end

m = pats.map do |pat|
  a = A.dup
  pat.each.with_index do |cond, i|
    if cond
      a[i], a[i+1] = - a[i], - a[i+1]
    end
  end
  a.reduce(0, :+)
end.max

puts m