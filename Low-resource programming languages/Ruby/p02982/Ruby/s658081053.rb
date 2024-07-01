n, d = gets.split.map &:to_i
x = n.times.map{gets.split.map &:to_i}
ans = 0
(0...n).each do |i|
  (i+1...n).each do |j|
    d = (0...d).inject(0){|s, k| s+(a[i][k]-a[j][k])**2}
    dd = Math.sqrt(d).floor
    ans += 1 if dd*dd==d
  end
end
p ans