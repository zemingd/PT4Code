n,k=gets.split.map &:to_i
a=gets.split.map(&:to_i).reverse
sum = 0
k.times do |i| 
  sum += a[i]
end
puts sum