_n = gets.chomp.to_i
hs = gets.chomp.split(' ').map(&:to_i)

mx = 0
ans = 0
hs.each do |h|
  ans += 1 if h >= mx
  mx = [mx, h].max
end
p ans
