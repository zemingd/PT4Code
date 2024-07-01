n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)


b = []


n.times do |i|
  b.push(a[i])
  b.reverse!
end


puts b