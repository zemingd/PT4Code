def dm(a, b)
  [a.to_s.length, b.to_s.length].max
end

n = gets.to_i
ans = 11
(1..Math.sqrt(n)).each do |i|
  x = n.divmod(i)
  if x[1].zero?
    ans = [ans, dm(i, x[0])].min
  end
end
puts ans