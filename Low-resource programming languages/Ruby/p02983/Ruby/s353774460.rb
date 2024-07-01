l, r = gets.chop.split.map(&:to_i)

ans = []
x = r - l + 1
x.times do |a|
  z = []
  x.times do |b|
    z[b] = (l + a) * (l + b + 1) % 2019 if r > l # && b != x
  end
  ans[a] = z
end

p ans.flatten.min
