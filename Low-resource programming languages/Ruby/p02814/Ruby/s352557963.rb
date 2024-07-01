n , m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
hit = {}
ans = 0
(1..m).each do |i|
  a.each do |j|

    if i % j == j / 2
      hit[i] = 0 if hit[i].nil?
      hit[i] += 1
    end
  end
end
hit.each do |i|
  # p i[0], i[1]
  ans += 1 if i[1] == n

end
puts ans