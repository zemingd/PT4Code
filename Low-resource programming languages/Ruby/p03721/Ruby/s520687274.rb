n,k = gets.split.map{|tmp|tmp.to_i}
array = Array.new
n.times do |i|
    a,b = gets.split.map{|tmp|tmp.to_i}
    b.times do |j|
        array.push(a)
    end
end
array.sort!
puts array[k-1]