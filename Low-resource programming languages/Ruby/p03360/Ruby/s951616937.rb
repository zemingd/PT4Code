ary = gets.split.map(&:to_i)
k = gets.to_i
max = ary.max
k.times do
  max*=2
end
ary.delete(ary.max)
ary.each do |i| max+=i end
puts max

