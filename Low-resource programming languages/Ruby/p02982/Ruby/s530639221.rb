N,D=gets.split.map(&:to_i)
X=N.times.map{gets.split.map(&:to_i)}
ans = 0
(0..N-2).each do |i|
  (i+1..N-1).each do |j|
    sum = 0
    D.times do |k|
      sum += (X[i][k] - X[j][k])**2
    end
    sum = Math.sqrt(sum)
    if sum.to_i == sum
      ans += 1
    end
  end
end
puts ans