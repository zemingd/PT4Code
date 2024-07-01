n, m = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i).sort

y = Array.new(m - 1, 0)
(m - 1).times do |i|
  y[i] = x[i + 1] - x[i]
end

y.sort!

xmax = x.last
xmin =  x.first
ymaxs = y.last(n - 1)

if ymaxs.empty?
  ysum = 0
else
  ysum = ymaxs.inject(:+)
end

puts xmax - xmin - ysum