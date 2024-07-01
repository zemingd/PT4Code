n = gets.to_i
a = gets.chomp.split(" ").map!{|i| i.to_i}
b = []
n.times do |j|
    b.push(a[j])
    b.reverse!
end
puts b.join(" ")
