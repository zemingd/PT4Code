n,k = gets.split.map{|tmp|tmp.to_i}
order = Array.new
a = Array.new(n)
b = Array.new(n)
n.times do |i|
    a[i],b[i] = gets.split.map{|tmp|tmp.to_i}
    order.push(a[i])
end
order.sort!
array = Array.new
order.each do |i|
    b[i].times do |j|
        array.push(a[i])
        if array.length == k
            puts array[k-1]
            exit(0)
        end
    end
end