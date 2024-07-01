n = gets.to_i
a = gets.split.map(&:to_i)

b = []
n.times do |i|
    b << a[i]
    b.reverse!
end

puts b.join(" ")