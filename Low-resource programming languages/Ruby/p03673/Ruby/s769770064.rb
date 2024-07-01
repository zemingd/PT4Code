n = gets.to_i
a = gets.chomp!.split

b = []
n.times do |i|
    if i.even?
        b.unshift(a[i])
    else
        b << a[i]
    end
end

b.reverse! if n.even?
puts b.join(" ")