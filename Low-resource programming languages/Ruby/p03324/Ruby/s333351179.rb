d, n = gets.chomp.split(' ').map{|i| i.to_i}
n = (n == 100) ? 101 : n
d.times do |i|
        n *= 100
end
puts n