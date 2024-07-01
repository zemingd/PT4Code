n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
a.each do |x|
  h[x] += 1
end
nk = h.size
v = h.values.sort
if k - nk < 0
  puts v.shift(nk - k).inject(:+)
else
  puts 0
end