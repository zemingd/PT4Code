n = gets.to_i
a = gets.split(' ').map(&:to_i)
good_layout = []
a.zip(1..n).reverse_each do |x, i|
  balls = good_layout.count{|j| j > i and j%i == 0 }
  good_layout.unshift(i) unless balls%2 == x
end

puts(good_layout.length)
puts(good_layout.join(' ')) if good_layout.length > 0
