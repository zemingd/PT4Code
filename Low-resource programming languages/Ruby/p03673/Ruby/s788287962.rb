n = gets.to_i
a = gets.split.map{|n|n.to_i}
array = Array.new
f = true
n.times do |i|
    if f
        array.push(a[i])
    else
        array.unshift(a[i])
    end
    f = !f
end
puts f ? array.join(" ") : array.reverse.join(" ")