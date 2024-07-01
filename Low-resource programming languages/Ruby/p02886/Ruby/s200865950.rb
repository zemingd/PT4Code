N, *DS = $stdin.read.split.map(&:to_i)
ans = 0
DS.each.with_index do |dx, x|
  DS.each.with_index do |dy, y|
    next if x == y
    ans += dx * dy
  end
end
p ans/2