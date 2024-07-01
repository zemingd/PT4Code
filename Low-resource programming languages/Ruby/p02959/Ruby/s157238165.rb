n = gets.to_i
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)
ans = 0
n.times do |i|
  ans += [as[i] + as[i+1], bs[i]].min
  if as[i] + as[i+1] > bs[i]
    as[i+1] -= [bs[i] - as[i], 0].max
  else
    as[i+1] = 0
  end
end
puts ans