n,m = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
t = a.slice(1,a[0])

(n-1).times do |i|
    a = gets.split.map(&:to_i)
    a = a.slice(1,a[0])
    t = t & a
end

# p t
p t.size