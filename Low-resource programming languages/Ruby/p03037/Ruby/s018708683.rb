n,m = gets.split.map(&:to_i)

l_max = 0
r_min = 10**9
m.times do |i|
  l,r = gets.split.map(&:to_i)
  l_max = [l,l_max].max
  r_min = [r,r_min].min
end

p [[n,r_min].min - l_max + 1, 0].max