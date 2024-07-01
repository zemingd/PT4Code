n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sorted = a.sort
m.times do
  sorted = sorted.sort
  sorted[n-1] = sorted[n-1] / 2
end

p sorted.inject(:+)
