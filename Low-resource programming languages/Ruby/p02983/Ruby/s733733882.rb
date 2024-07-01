def remainder_minimization_2019(l, r)
  ans = (l * r) % 2019
  used = {}
  l.upto([l * 2, r - 1].min) do |i|
    next if used[i]
    (i + 1).upto(r) do |j|
      used[i * j] = true
      ans = [ans, (i * j) % 2019].min
      return 0 if ans.zero?
    end
  end
  ans
end

l, r = gets.split.map(&:to_i)
puts remainder_minimization_2019(l, r)
