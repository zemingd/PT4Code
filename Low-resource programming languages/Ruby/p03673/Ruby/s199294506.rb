n = gets.to_i
a = gets.split.map{|n|n.to_i}
array = Array.new
n.times do |i|
    array.push(a[i])
    array.reverse!
end
puts array.join(" ")