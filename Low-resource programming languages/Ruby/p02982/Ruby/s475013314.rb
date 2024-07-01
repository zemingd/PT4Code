n,d = gets.split.map(&:to_i)

ans = 0
dots = n.times.map{gets.split.map(&:to_f)}
(0..n-2).each do |i|
  y = dots[i]
  (i+1..n-1).each do |j|
    z = dots[j]
    dist = (d.times.map{|k| (y[k]-z[k])**2}.inject(:+))**(1/2.0)
    ans += 1 if dist == (dist * 10).to_i / 10.0
  end
end

puts ans