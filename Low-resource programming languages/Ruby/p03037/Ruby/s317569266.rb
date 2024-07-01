=begin
N M
L1 R1
L2 R2
...
Lm Rm
=end

n, m = gets.chomp.split(" ").map(&:to_i)
lrs = m.times.map do
  gets.chomp.split(" ").map(&:to_i)
end

l, r = 0, 10 ** 6

lrs.each do |lc, rc|
  l = [l, lc].max
  r = [r, rc].min
end

if r >= l
  puts(r - l + 1)
else
  puts 0
end
