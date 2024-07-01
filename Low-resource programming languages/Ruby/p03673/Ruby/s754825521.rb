n = gets.to_i
a = gets.chomp.split

b = []
n.times do |i|
    i.even? ? b << a[i] : b.unshift(a[i])
end

puts (n.odd? ? b.reverse : b).join(" ")