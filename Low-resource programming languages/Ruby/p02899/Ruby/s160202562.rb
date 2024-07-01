n = gets.to_i
a = gets.split(' ').map(&:to_i)
order = Array.new
n.times do |b|
    order[a[b],0] = b+1
end
order.delete(nil)
puts order

