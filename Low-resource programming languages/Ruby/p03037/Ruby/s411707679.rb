n,m = gets.chomp.split.map &:to_i
l_max = 0
r_min = 10 ** 6

m.times do
  l,r = gets.chomp.split.map &:to_i
  l_max = [l_max, l].max
  r_min = [r_min, r].min
end

puts (l_max..r_min).size
