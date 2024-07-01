n,l = gets.chomp.split(' ').map(&:to_i)

apples = []
n.times do |i|
  apples << l + (i+1) - 1
end

abs_apples = apples.map{|apple| apple.abs}
abs_min_index = abs_apples.index(abs_apples.min)

apples.delete_at(abs_min_index)
puts apples.inject(:+)
