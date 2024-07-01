N, C = gets.split.map(&:to_i)
stc = N.times.map { gets.split.map(&:to_i) }
a = Array.new(C) { Array.new }

stc.each do |s, t, c|
  a[c-1][(s-1)..t] = [true] * (t - s + 1)
end

m = 0
(10**5).times do |i|
  m = [m, a.map { |j| j[i] }.count(true)].max
end
p m
