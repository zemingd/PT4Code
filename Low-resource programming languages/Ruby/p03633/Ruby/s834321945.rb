n, *ary = $stdin.read.split.map(&:to_i)
ans = ary.reduce(1) do |res, i|
  res.lcm(i)
end
puts(ans)