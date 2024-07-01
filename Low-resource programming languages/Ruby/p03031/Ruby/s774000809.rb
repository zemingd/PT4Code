n, m = gets.split.map(&:to_i)
s = m.times.map do
  gets.split.map(&:to_i).drop(1)
end
ps = gets.split.map(&:to_i)

ans = 0
[0,1].repeated_permutation(n).each do |sw|
  light_on = s.each_with_index.all? do |ss, i|
    (ss.reduce(0){|acc, sv| acc + sw[sv-1]} % 2) == ps[i]
  end
  ans += 1 if light_on
end
puts ans
