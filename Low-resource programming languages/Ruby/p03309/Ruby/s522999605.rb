N = gets.to_i

a = gets.split.map(&:to_i)
diff = []

N.times do |i|
  diff << a[i] - (i + 1)
end

diff.sort!

def calc(d, b)
  sum = 0
  d.each_with_index do |dd, i|
    sum += (dd - (b + (i + 1))).abs
  end
  sum
end

if diff.size.odd?
  puts calc(a, diff[diff.size / 2])
else
  n1 = calc(a, diff[diff.size / 2])
  n2 = calc(a, diff[diff.size / 2 - 1])
  puts [n1, n2].min
end
