n, m = gets.split.map(&:to_i)
n = Array.new(n){0}
m.times do |i|
  a, b = gets.split.map(&:to_i)
  n[a - 1] += 1
  n[b - 1] += 1
end
n.each{ |num| puts num}