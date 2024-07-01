N, D = gets.split.map(&:to_i)
XS = N.times.map { gets.split.map(&:to_i) }

ans = 0
XS.combination(2) do |xs1, xs2|
  sum = 0
  D.times do |i|
    sum += (xs1[i] - xs2[i])**2
  end

  sq = Math.sqrt(sum)
  ans += 1 if sq == sq.to_i
end

puts ans
