n,m = gets.split.map(&:to_i)
a = Array.new(n+2,0)
m.times do
    l,r = gets.split.map(&:to_i)
    a[l] += 1
    a[r+1] -= 1
end
(0..n).each do |i|
    a[i+1] += a[i]
end
puts a.count(m)