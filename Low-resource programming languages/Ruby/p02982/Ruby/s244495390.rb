n,d = gets.split.map(&:to_i)
xs = []
n.times do
  xs << gets.split.map(&:to_i)
end
ans = 0

xs.each.with_index do |x,i|
  (i+1..n-1).each do |j|
    x2 = xs[j]
    total = 0
    x.each.with_index do |d,k|
      total += (d-x2[k]).abs ** 2
    end
    if Math.sqrt(total) % 1 == 0
      ans += 1
    end
  end
end

puts ans
