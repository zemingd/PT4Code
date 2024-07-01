_n, m = gets.split.map(&:to_i)
# [](l,r)
cards = Array.new(m) { gets.split.map(&:to_i) }

# (l,r)
l, r = cards.reduce do |c0, c1|
  l0, r0 = c0
  l1, r1 = c1
  [[l0, l1].max, [r0, r1].min]
end
p((l..r).size)
