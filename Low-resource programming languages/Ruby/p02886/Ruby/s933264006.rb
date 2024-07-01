n=gets.to_i
dS=gets.split.map(&:to_i)
recoverySum=0
(n-1).times do |x|
  ((x+1)...n).each do |y|
    recoverySum += dS[x] * dS[y]
  end
end
puts recoverySum