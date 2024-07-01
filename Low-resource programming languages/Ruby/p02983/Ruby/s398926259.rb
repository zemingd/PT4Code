def remainder_minimization_2019(l, r)
  ans = (l * r) % 2019
  l.upto(r - 1) do |i|
    (i + 1).upto(r) do |j|
      ans = [ans, (i * j) % 2019].min
    end
  end
  ans
end

l, r = gets.split.map(&:to_i)
puts remainder_minimization_2019(l, r)
