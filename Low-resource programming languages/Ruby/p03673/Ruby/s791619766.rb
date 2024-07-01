n = gets.to_i
a = gets.split.map(&:to_i)

b = []
n.times do |i|
    i.even? ? b << a[i] : b.unshift(a[i])
end

puts (n.odd? ? b.reverse! : b).join(" ")