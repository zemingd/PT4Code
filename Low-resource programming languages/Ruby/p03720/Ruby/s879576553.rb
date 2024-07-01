n, m = gets.strip.split.map(&:to_i)

a=Array.new(n,0)
m.times do |i|
  an,bn = gets.strip.split.map(&:to_i)
  a[an-1] += 1
  a[bn-1] += 1
end
n.times do |i|
puts a[i]
end
