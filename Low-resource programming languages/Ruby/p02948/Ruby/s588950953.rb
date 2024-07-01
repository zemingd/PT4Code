n,m = gets.chomp.split.map(&:to_i)
ts = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first).sort_by(&:last).reverse
ans = 0
ts.each do |d,r|
  if m >= d
    ans += r
    m -= 1
  end
end
puts ans