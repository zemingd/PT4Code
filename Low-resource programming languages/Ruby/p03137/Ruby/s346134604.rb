n,m = gets.strip.split.map &:to_i
points = gets.strip.split.map(&:to_i).sort

if m == 1 or n >= m
  puts 0
else
  difs = points.each_cons(2).map { |a,b| (b - a).abs }.sort
  puts difs[0, m - n].inject(0, &:+)
end