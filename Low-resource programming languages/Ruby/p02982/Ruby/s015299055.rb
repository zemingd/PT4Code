N,D = gets.split.map(&:to_i)
X_arr =  N.times.map{gets.split.map(&:to_i)}

ans = 0
X_arr.combination(2) do |x1, x2|
  sum = 0
  D.times do |i|
    sum += (x1[i] - x2[i])**2
  end

  sq = Math.sqrt(sum)
  ans += 1 if sq % 1 == 0
end

puts ans
