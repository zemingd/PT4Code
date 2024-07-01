n = gets.to_i
a = gets.split(' ').map{|n| n.to_i}
b = Array.new()

n.times do |i|
  b << a[i]
  b.reverse!
end

puts b.join(' ')