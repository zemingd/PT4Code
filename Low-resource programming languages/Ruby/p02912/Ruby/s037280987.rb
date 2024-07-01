n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sorted = a.sort
locked = 0
m.times do |i|
  sorted = sorted.sort if i != 0 && locked == 0
  locked = sorted[n-1] / sorted[n-2]
  sorted[n-1] = sorted[n-1] / 2
  locked -= 1
end

p sorted.inject(:+)

