N = gets.chomp.to_i
a = gets.split.map(&:to_i)
order = []
N.times do |b|
    order[a[b]] = b+1
end
puts order.join(' ')
 