l, r = gets.chop.split.map(&:to_i)

ans = []
x = r - l + 1
x.times do |a|
  z = []
  x.times do |b|
    if r > l && b != x
      z[b] = (l + a) * (l + b + 1) % 2019
    end
  end
  ans[a] = z
end

p ans.flatten.min